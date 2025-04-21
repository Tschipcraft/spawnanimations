package net.tschipcraft.spawnanimations.fabric;

import com.mojang.brigadier.exceptions.CommandSyntaxException;
import net.minecraft.server.MinecraftServer;
import net.minecraft.server.command.ServerCommandSource;

public class sendConfig {

    public static void sendConfig(MinecraftServer server) {
        sendCommand("scoreboard objectives add ts.sa.settings dummy", server);
        if (Config.activation_distance == 0) {
            sendCommand("execute unless score $activation_dist ts.sa.settings matches 1..100 run scoreboard players set $activation_dist ts.sa.settings 20", server);
            sendCommand("execute if score #lock_distance ts.sa.settings matches 1 run scoreboard players set #lock_distance ts.sa.settings 0", server);
        } else {
            sendCommand("scoreboard players set $activation_dist ts.sa.settings " + Config.activation_distance, server);
            sendCommand("scoreboard players set #lock_distance ts.sa.settings 1", server);
        }

        if (Config.activation_mode == Config.mode.CLASSIC) {
            sendCommand("scoreboard players set $activation_mode ts.sa.settings 2", server);
        } else if (Config.activation_mode == Config.mode.VANILLA) {
            sendCommand("scoreboard players set $activation_mode ts.sa.settings -1", server);
        } else {
            sendCommand("execute if score $activation_mode ts.sa.settings matches -1 run scoreboard players set $activation_mode ts.sa.settings 0", server);
            sendCommand("execute if score $activation_mode ts.sa.settings matches 2 run scoreboard players set $activation_mode ts.sa.settings 1", server);
        }

        if (Config.hide_worn_armor_and_tools == Config.bool.YES) {
            sendCommand("scoreboard players set $hide_armor ts.sa.settings 2", server);
        } else if (Config.hide_worn_armor_and_tools == Config.bool.NO) {
            sendCommand("scoreboard players set $hide_armor ts.sa.settings -1", server);
        } else {
            sendCommand("execute if score $hide_armor ts.sa.settings matches -1 run scoreboard players set $hide_armor ts.sa.settings 0", server);
            sendCommand("execute if score $hide_armor ts.sa.settings matches 2 run scoreboard players set $hide_armor ts.sa.settings 1", server);
        }
        if (Config.play_animation_on_unsupported_blocks == Config.bool.YES) {
            sendCommand("scoreboard players set $play_unsupport ts.sa.settings 2", server);
        } else if (Config.play_animation_on_unsupported_blocks == Config.bool.NO) {
            sendCommand("scoreboard players set $play_unsupport ts.sa.settings -1", server);
        } else {
            sendCommand("execute if score $play_unsupport ts.sa.settings matches -1 run scoreboard players set $play_unsupport ts.sa.settings 0", server);
            sendCommand("execute if score $play_unsupport ts.sa.settings matches 2 run scoreboard players set $play_unsupport ts.sa.settings 1", server);
        }
    }

    public static void sendCommand(String command, MinecraftServer server) {
        ServerCommandSource commandSource = server.getCommandSource();
        try {
            server.getCommandManager().getDispatcher().execute(command, commandSource);
        } catch (CommandSyntaxException ignored) {
        }
    }

}
