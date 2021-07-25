## by Tschipcraft

scoreboard players add @s spa_a_timer 1

## Sounds
execute as @s[scores={spa_a_timer=1}] at @s run function spawnanimations:sound/sound
execute as @s[scores={spa_a_timer=20}] at @s run function spawnanimations:sound/sound
execute as @s[scores={spa_a_timer=40}] at @s run function spawnanimations:sound/sound
execute as @s[scores={spa_a_timer=59}] at @s run function spawnanimations:sound/sound_2

# Sand
execute if block ~ ~-1 ~ #minecraft:sand unless block ~ ~-1 ~ red_sand run particle minecraft:block sand ~ ~ ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~-1 ~ red_sand run particle minecraft:block red_sand ~ ~ ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~-1 ~ sandstone run particle minecraft:block sandstone ~ ~ ~ 0.1 0 0.1 1 9 normal
# Dirt
execute if block ~ ~-1 ~ #minecraft:bamboo_plantable_on unless block ~ ~-1 ~ #minecraft:sand unless block ~ ~-1 ~ gravel run particle minecraft:block dirt ~ ~ ~ 0.1 0 0.1 1 9 normal
# Wood
execute if block ~ ~-1 ~ #minecraft:planks run particle minecraft:block oak_planks ~ ~ ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~-1 ~ #minecraft:logs run particle minecraft:block oak_log ~ ~ ~ 0.1 0 0.1 1 9 normal
# leaves
execute if block ~ ~-1 ~ #minecraft:leaves run particle minecraft:block minecraft:oak_leaves ~ ~ ~ 0.1 0 0.1 1 9 normal
# Stone
execute if block ~ ~-1 ~ #minecraft:stone_bricks run particle minecraft:block minecraft:stone_bricks ~ ~ ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~-1 ~ #minecraft:base_stone_overworld run particle minecraft:block stone ~ ~ ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~-1 ~ cobblestone run particle minecraft:block cobblestone ~ ~ ~ 0.1 0 0.1 1 9 normal
# Other
execute if block ~ ~-1 ~ hay_block run particle minecraft:block minecraft:hay_block ~ ~ ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~-1 ~ #minecraft:wool run particle minecraft:block minecraft:white_wool ~ ~ ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~-1 ~ gravel run particle minecraft:block gravel ~ ~ ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~-1 ~ snow run particle minecraft:block snow ~ ~-0.7 ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~-1 ~ #minecraft:ice run particle minecraft:block ice ~ ~ ~ 0.1 0 0.1 1 9 normal

# End
execute if block ~ ~-1 ~ end_stone run particle minecraft:block end_stone ~ ~ ~ 0.1 0 0.1 1 9 normal

# Nether
execute if block ~ ~-1 ~ #minecraft:nylium run particle minecraft:block minecraft:crimson_nylium ~ ~ ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~-1 ~ #minecraft:base_stone_nether run particle minecraft:block netherrack ~ ~ ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~-1 ~ #minecraft:soul_fire_base_blocks run particle minecraft:block minecraft:soul_sand ~ ~ ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~-1 ~ #minecraft:soul_fire_base_blocks run particle minecraft:soul ~ ~ ~ 0.1 0.1 0.1 0.01 1 normal


execute positioned ~ ~-1 ~ if entity @e[tag=nether_mob,distance=..1] run particle lava ~ ~1.2 ~ 0.1 0 0.1 0.01 1 normal
execute positioned ~ ~-1 ~ if entity @e[tag=end_mob,distance=..1.5] run particle dragon_breath ~ ~1 ~ 0.1 0 0.1 0.01 5 normal


## Particles for the giant
execute as @s[tag=giant_particles] at @s run function spawnanimations:general/giant_particles
