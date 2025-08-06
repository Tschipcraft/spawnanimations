package net.tschipcraft.spawnanimations.neoforge;

import eu.midnightdust.lib.config.MidnightConfig;

public class Config extends MidnightConfig {

    public enum bool {
        WORLD, YES, NO
    }
    public enum mode {
        WORLD, CLASSIC, VANILLA
    }

    @Comment(centered = true)
    public static Comment configure_ingame;
    @Comment(centered = true)
    public static Comment configure_ingame2;
    @Comment(centered = true)
    public static Comment empty;

    @Comment(centered = true)
    public static Comment global_settings;
    @Comment(centered = true)
    public static Comment info;
    @Comment(centered = true)
    public static Comment info2;

    @Entry(isSlider = true, min = 0, max = 100)
    public static int activation_distance = 0;
    @Entry
    public static mode activation_mode = mode.WORLD;
    @Entry
    public static bool enable_poof_animation = bool.WORLD;
    @Entry
    public static bool play_animation_sounds = bool.WORLD;

    @Comment
    public static Comment empty2;

    @Entry
    public static bool hide_worn_armor_and_tools = bool.WORLD;
    @Entry
    public static bool hide_emissive_mob_layers = bool.WORLD;
    @Entry
    public static bool reduce_enderman_particles = bool.WORLD;
    @Entry
    public static bool play_animation_on_unsupported_blocks = bool.WORLD;

}
