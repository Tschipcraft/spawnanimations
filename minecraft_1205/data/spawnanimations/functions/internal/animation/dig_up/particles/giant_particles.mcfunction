## by Tschipcraft

# Sand
execute if block ~ ~ ~ #minecraft:sand run particle block{block_state:"minecraft:sand"} ~ ~1 ~ 1.5 0 1.5 1 30 normal
# Dirt
execute if block ~ ~ ~ #minecraft:bamboo_plantable_on unless block ~ ~ ~ #minecraft:sand run particle block{block_state:"minecraft:dirt"} ~ ~1 ~ 1.5 0 1.5 1 30 normal
# Wood
execute if block ~ ~ ~ #minecraft:planks run particle block{block_state:"minecraft:oak_planks"} ~ ~1 ~ 1.5 0 1.5 1 30 normal
execute if block ~ ~ ~ #minecraft:logs run particle block{block_state:"minecraft:oak_log"} ~ ~1 ~ 1.5 0 1.5 1 30 normal
# Leaves
execute if block ~ ~ ~ #minecraft:leaves run particle block{block_state:"minecraft:oak_leaves"} ~ ~1 ~ 1.5 0 1.5 1 30 normal
# Stone
execute if block ~ ~ ~ #minecraft:base_stone_overworld run particle block{block_state:"minecraft:stone"} ~ ~1 ~ 1.5 0 1.5 1 30 normal
execute if block ~ ~ ~ minecraft:cobblestone run particle block{block_state:"minecraft:cobblestone"} ~ ~1 ~ 1.5 0 1.5 1 30 normal
execute if block ~ ~ ~ #minecraft:stone_bricks run particle block{block_state:"minecraft:stone_bricks"} ~ ~1 ~ 1.5 0 1.5 1 30 normal

# Nether
execute if block ~ ~ ~ #minecraft:nylium run particle block{block_state:"minecraft:crimson_nylium"} ~ ~1 ~ 1.5 0 1.5 1 30 normal
execute if block ~ ~ ~ #minecraft:base_stone_nether run particle block{block_state:"minecraft:netherrack"} ~ ~1 ~ 1.5 0 1.5 1 30 normal
execute if block ~ ~ ~ #minecraft:soul_fire_base_blocks run particle block{block_state:"minecraft:soul_sand"} ~ ~1 ~ 1.5 0 1.5 1 30 normal

# End
execute if block ~ ~ ~ minecraft:end_stone run particle block{block_state:"minecraft:end_stone"} ~ ~1 ~ 1.5 0 1.5 1 30 normal