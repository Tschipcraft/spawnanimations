package net.tschipcraft.spawnanimations.forge;

import com.mojang.logging.LogUtils;
import eu.midnightdust.lib.config.MidnightConfig;
import net.minecraftforge.client.ConfigScreenHandler;
import net.minecraftforge.common.MinecraftForge;
import net.minecraftforge.event.server.ServerStartedEvent;
import net.minecraftforge.eventbus.api.IEventBus;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.fml.ModList;
import net.minecraftforge.fml.ModLoadingContext;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.fml.event.lifecycle.FMLCommonSetupEvent;
import net.minecraftforge.fml.javafmlmod.FMLJavaModLoadingContext;
import org.slf4j.Logger;

@Mod("spawnanimations")
@Mod.EventBusSubscriber(modid = "spawnanimations")
public class Init {

	public static final String MODID = "spawnanimations";
	private static Logger LOGGER;

	static {
		try {
			// Directly reference a slf4j logger
			LOGGER = LogUtils.getLogger();
		} catch (NoClassDefFoundError ignored) {
		}
	}

	public Init() {
		IEventBus modEventBus = FMLJavaModLoadingContext.get().getModEventBus();

		// Register the setup method for modloading
		modEventBus.addListener(this::setup);

		try {
			if (LOGGER != null) LOGGER.info("[Spawn Animations] Registering server started event...");
			Class.forName("net.minecraftforge.event.server.ServerStartedEvent");

			// Register onServerStarted handler
			MinecraftForge.EVENT_BUS.register(new Object() {
				@SubscribeEvent
				public void onServerStarted(ServerStartedEvent event) {
					if (ModList.get().isLoaded("midnightlib")) {
						LOGGER.info("[Spawn Animations] Sending global config to server...");
						sendConfig.sendConfig(event.getServer());
					}
				}
			});

		} catch (ClassNotFoundException e) {
			// ServerStartedEvent doesn't exist, don't register
		}
	}

	private void setup(final FMLCommonSetupEvent event) {
		if (ModList.get().isLoaded("midnightlib")) {
			// Use MidnightLib features
			LOGGER.info("[Spawn Animations] MidnightLib detected!");
			// Build config class
			Config.init(MODID, Config.class);
			// Initialize config screen
			ModLoadingContext.get().registerExtensionPoint(ConfigScreenHandler.ConfigScreenFactory.class, () -> {
				return new ConfigScreenHandler.ConfigScreenFactory((client, parent) -> {
					return MidnightConfig.getScreen(parent, MODID);
				});
			});
		}
		if (LOGGER != null) LOGGER.info("[Spawn Animations] Loaded Spawn Animations by Tschipcraft successfully!");
	}
}
