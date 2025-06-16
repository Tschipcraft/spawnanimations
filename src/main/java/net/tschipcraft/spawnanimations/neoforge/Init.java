package net.tschipcraft.spawnanimations.neoforge;

import eu.midnightdust.lib.config.MidnightConfig;

import net.neoforged.bus.api.IEventBus;
import net.neoforged.bus.api.SubscribeEvent;
import net.neoforged.fml.ModContainer;
import net.neoforged.fml.ModList;
import net.neoforged.fml.common.Mod;
import net.neoforged.neoforge.client.gui.IConfigScreenFactory;
import net.neoforged.neoforge.common.NeoForge;
import net.neoforged.neoforge.event.server.ServerStartedEvent;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.function.Supplier;

@Mod(Init.MODID)
public class Init {

	public static final String MODID = "spawnanimations";
	private static Logger LOGGER;

	static {
		try {
			// Directly reference a slf4j logger
			LOGGER = LoggerFactory.getLogger(MODID);
		} catch (NoClassDefFoundError ignored) {
			// No logging
		}
	}

	public Init(IEventBus modEventBus, ModContainer modContainer) {

		try {
			if (LOGGER != null) LOGGER.info("[Spawn Animations] Registering server started event...");
			Class.forName("net.neoforged.neoforge.event.server.ServerStartedEvent");

			// Register onServerStarted handler
			NeoForge.EVENT_BUS.register(new Object() {
				@SubscribeEvent
				public void onServerStarted(ServerStartedEvent event) {
					if (ModList.get().isLoaded("midnightlib")) {
						LOGGER.info("[Spawn Animations] Sending global config to world ...");
						sendConfig.sendConfig(event.getServer());
					}
				}
			});

			if (ModList.get().isLoaded("midnightlib")) {
				// Use MidnightLib features
				LOGGER.info("[Spawn Animations] MidnightLib detected!");
				// Build config class
				MidnightConfig.init(MODID, Config.class);
				// Initialize config screen
				modContainer.registerExtensionPoint(IConfigScreenFactory.class,
						(Supplier<IConfigScreenFactory>) () -> (client, parent) ->
								MidnightConfig.getScreen(parent, MODID)
				);

			}
			if (LOGGER != null) LOGGER.info("[Spawn Animations] Loaded Spawn Animations by Tschipcraft successfully!");

		} catch (ClassNotFoundException e) {
			// ServerStartedEvent doesn't exist, don't register
			if (LOGGER != null) LOGGER.info("[Spawn Animations] ServerStartedEvent not found, not registering event handler and config.");
		}
	}

}
