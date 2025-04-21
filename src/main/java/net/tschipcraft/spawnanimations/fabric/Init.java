package net.tschipcraft.spawnanimations.fabric;

import net.fabricmc.api.ModInitializer;
import net.fabricmc.fabric.api.event.lifecycle.v1.ServerLifecycleEvents;
import net.fabricmc.loader.api.FabricLoader;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Init implements ModInitializer {

	public static Logger LOGGER;

	static {
		try {
			// Directly reference a slf4j logger
			LOGGER = LoggerFactory.getLogger("spawnanimations");
		} catch (NoClassDefFoundError ignored) {
			// No logging
		}
	}

	@Override
	public void onInitialize() {
		if (FabricLoader.getInstance().isModLoaded("midnightlib")) {
			LOGGER.info("[Spawn Animations] MidnightLib detected!");
			// Build config class
			Config.init(LOGGER.getName(), Config.class);

			LOGGER.info("[Spawn Animations] Registering server started event ...");
			ServerLifecycleEvents.SERVER_STARTED.register((server) -> {
				if (FabricLoader.getInstance().isModLoaded("midnightlib")) {
					// Use MidnightLib features
					LOGGER.info("[Spawn Animations] Sending global config to world ...");
					sendConfig.sendConfig(server);
				}
			});
		}
		if (LOGGER != null) LOGGER.info("[Spawn Animations] Loaded Spawn Animations by Tschipcraft successfully!");
	}

}
