## by Tschipcraft

# Sand
execute if block ~ ~-1 ~ #minecraft:sand run playsound minecraft:block.sand.break block @a ~ ~ ~ 1 0.6
execute if block ~ ~-1 ~ sandstone run playsound minecraft:block.stone.break block @a ~ ~ ~ 1 0.6
# Dirt
execute if block ~ ~-1 ~ #minecraft:bamboo_plantable_on unless block ~ ~-1 ~ #minecraft:sand run playsound minecraft:block.gravel.break block @a ~ ~ ~ 1 0.6
# Wood
execute if block ~ ~-1 ~ #minecraft:planks run playsound minecraft:block.wood.break block @a ~ ~ ~ 1 0.6
execute if block ~ ~-1 ~ #minecraft:logs run playsound minecraft:block.wood.break block @a ~ ~ ~ 1 0.6
# Leaves
execute if block ~ ~-1 ~ #minecraft:leaves run playsound minecraft:block.grass.break block @a ~ ~ ~ 1 0.6
# Stone
execute if block ~ ~-1 ~ #minecraft:base_stone_overworld run playsound minecraft:block.stone.break block @a ~ ~ ~ 1 0.6
execute if block ~ ~-1 ~ #minecraft:stone_bricks run playsound minecraft:block.stone.break block @a ~ ~ ~ 1 0.6
execute if block ~ ~-1 ~ minecraft:cobblestone run playsound minecraft:block.stone.break block @a ~ ~ ~ 1 0.6
# Other
execute if block ~ ~-1 ~ minecraft:hay_block run playsound minecraft:block.grass.break block @a ~ ~ ~ 1 0.6
execute if block ~ ~-1 ~ #minecraft:wool run playsound minecraft:block.wool.break block @a ~ ~ ~ 1 0.6
execute if block ~ ~-1 ~ minecraft:snow run playsound minecraft:block.snow.break block @a ~ ~ ~ 1 0.6
execute if block ~ ~-1 ~ #minecraft:ice run playsound minecraft:block.glass.break block @a ~ ~ ~ 1 0.6

# End
execute if block ~ ~-1 ~ minecraft:end_stone run playsound minecraft:block.stone.break block @a ~ ~ ~ 1 0.6

# Nether
execute if block ~ ~-1 ~ #minecraft:base_stone_nether run playsound minecraft:block.netherrack.break block @a ~ ~ ~ 1 0.6
execute if block ~ ~-1 ~ #minecraft:nylium run playsound minecraft:block.wart_block.break block @a ~ ~ ~ 1 0.6
execute if block ~ ~-1 ~ #minecraft:soul_fire_base_blocks run playsound minecraft:block.soul_sand.break block @a ~ ~ ~ 1 0.6
