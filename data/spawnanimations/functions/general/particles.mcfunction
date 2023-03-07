## by Tschipcraft

scoreboard players add @s ts.sa.timer 1

## Sounds
execute as @s[scores={ts.sa.timer=1}] at @s if block ~ ~-1 ~ #spawnanimations:supported run function spawnanimations:sound/sound
execute as @s[scores={ts.sa.timer=20}] at @s if block ~ ~-1 ~ #spawnanimations:supported run function spawnanimations:sound/sound
execute as @s[scores={ts.sa.timer=40}] at @s if block ~ ~-1 ~ #spawnanimations:supported run function spawnanimations:sound/sound
execute as @s[scores={ts.sa.timer=59}] at @s if block ~ ~-1 ~ #spawnanimations:supported run function spawnanimations:sound/sound_2

# Extra particles for supported blocks
# Sand
execute if block ~ ~-1 ~ #minecraft:sand unless block ~ ~-1 ~ minecraft:red_sand run particle minecraft:block minecraft:sand ~ ~ ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~-1 ~ minecraft:red_sand run particle minecraft:block minecraft:red_sand ~ ~ ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~-1 ~ minecraft:sandstone run particle minecraft:block minecraft:sandstone ~ ~ ~ 0.1 0 0.1 1 9 normal
# Dirt
execute if block ~ ~-1 ~ #minecraft:bamboo_plantable_on unless block ~ ~-1 ~ #minecraft:sand unless block ~ ~-1 ~ minecraft:gravel run particle minecraft:block minecraft:dirt ~ ~ ~ 0.1 0 0.1 1 9 normal
# Wood
execute if block ~ ~-1 ~ #minecraft:planks run particle minecraft:block minecraft:oak_planks ~ ~ ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~-1 ~ #minecraft:logs run particle minecraft:block minecraft:oak_log ~ ~ ~ 0.1 0 0.1 1 9 normal
# leaves
execute if block ~ ~-1 ~ #minecraft:leaves run particle minecraft:block minecraft:oak_leaves ~ ~ ~ 0.1 0 0.1 1 9 normal
# Stone
execute if block ~ ~-1 ~ #minecraft:stone_bricks run particle minecraft:block minecraft:stone_bricks ~ ~ ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~-1 ~ #minecraft:base_stone_overworld run particle minecraft:block minecraft:stone ~ ~ ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~-1 ~ minecraft:cobblestone run particle minecraft:block minecraft:cobblestone ~ ~ ~ 0.1 0 0.1 1 9 normal
# Other
execute if block ~ ~-1 ~ minecraft:hay_block run particle minecraft:block minecraft:hay_block ~ ~ ~ 0.1 0 0.1 1 9 normal
#execute if block ~ ~-1 ~ #minecraft:wool run particle minecraft:block minecraft:white_wool ~ ~ ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~-1 ~ minecraft:gravel run particle minecraft:block minecraft:gravel ~ ~ ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~-1 ~ minecraft:snow run particle minecraft:block minecraft:snow ~ ~-0.7 ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~-1 ~ #minecraft:ice run particle minecraft:block minecraft:ice ~ ~ ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~-1 ~ minecraft:obsidian run particle minecraft:block minecraft:obsidian ~ ~ ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~-1 ~ minecraft:slime_block run particle minecraft:block minecraft:slime_block ~ ~ ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~-1 ~ minecraft:nether_bricks run particle minecraft:block minecraft:nether_bricks ~ ~ ~ 0.1 0 0.1 1 9 normal

# End
execute if block ~ ~-1 ~ minecraft:end_stone run particle minecraft:block minecraft:end_stone ~ ~ ~ 0.1 0 0.1 1 9 normal

# Nether
execute if block ~ ~-1 ~ #minecraft:nylium run particle minecraft:block minecraft:crimson_nylium ~ ~ ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~-1 ~ #minecraft:base_stone_nether run particle minecraft:block minecraft:netherrack ~ ~ ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~-1 ~ #minecraft:soul_fire_base_blocks run particle minecraft:block minecraft:soul_sand ~ ~ ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~-1 ~ #minecraft:soul_fire_base_blocks run particle minecraft:soul ~ ~ ~ 0.1 0.1 0.1 0.01 1 normal


execute positioned ~ ~-1 ~ if entity @e[tag=ts.sa.nether_mob,distance=..1] run particle lava ~ ~1.2 ~ 0.1 0 0.1 0.01 1 normal
execute positioned ~ ~-1 ~ if entity @e[tag=ts.sa.end_mob,distance=..1.5] run particle dragon_breath ~ ~1 ~ 0.1 0 0.1 0.01 5 normal


## Particles for the giant
execute as @s[tag=ts.sa.giant_particles] at @s run function spawnanimations:general/giant_particles
