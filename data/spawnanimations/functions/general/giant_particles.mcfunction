## by Tschipcraft

# Sand
execute if block ~ ~-1 ~ #minecraft:sand run particle minecraft:block minecraft:sand ~ ~ ~ 1.5 0 1.5 1 30 normal
# Dirt
execute if block ~ ~-1 ~ #minecraft:bamboo_plantable_on unless block ~ ~-1 ~ #minecraft:sand run particle minecraft:block minecraft:dirt ~ ~ ~ 1.5 0 1.5 1 30 normal
# Wood
execute if block ~ ~-1 ~ #minecraft:planks run particle minecraft:block oak_planks ~ ~ ~ 1.5 0 1.5 1 30 normal
execute if block ~ ~-1 ~ #minecraft:logs run particle minecraft:block oak_log ~ ~ ~ 1.5 0 1.5 1 30 normal
# Leaves
execute if block ~ ~-1 ~ #minecraft:leaves run particle minecraft:block minecraft:oak_leaves ~ ~ ~ 1.5 0 1.5 1 30 normal
# Stone
execute if block ~ ~-1 ~ #minecraft:base_stone_overworld run particle minecraft:block stone ~ ~ ~ 1.5 0 1.5 1 30 normal
execute if block ~ ~-1 ~ minecraft:cobblestone run particle minecraft:block minecraft:cobblestone ~ ~ ~ 1.5 0 1.5 1 30 normal
execute if block ~ ~-1 ~ #minecraft:stone_bricks run particle minecraft:block stone_bricks ~ ~ ~ 1.5 0 1.5 1 30 normal

# Nether
execute if block ~ ~-1 ~ #minecraft:nylium run particle minecraft:block minecraft:crimson_nylium ~ ~ ~ 1.5 0 1.5 1 30 normal
execute if block ~ ~-1 ~ #minecraft:base_stone_nether run particle minecraft:block netherrack ~ ~ ~ 1.5 0 1.5 1 30 normal
execute if block ~ ~-1 ~ #minecraft:soul_fire_base_blocks run particle minecraft:block minecraft:soul_sand ~ ~ ~ 1.5 0 1.5 1 30 normal

# End
execute if block ~ ~-1 ~ minecraft:end_stone run particle minecraft:block minecraft:end_stone ~ ~ ~ 1.5 0 1.5 1 30 normal
