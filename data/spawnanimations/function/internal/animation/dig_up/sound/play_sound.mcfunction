## by Tschipcraft

# Sand
execute if block ~ ~ ~ #minecraft:sand run playsound minecraft:block.sand.break hostile @a ~ ~ ~ 0.85 0.6
execute if block ~ ~ ~ sandstone run playsound minecraft:block.stone.break hostile @a ~ ~ ~ 0.85 0.6
# Dirt
execute if block ~ ~ ~ #minecraft:bamboo_plantable_on unless block ~ ~ ~ #minecraft:sand unless block ~ ~0.2 ~ minecraft:snow run playsound minecraft:block.gravel.break hostile @a ~ ~ ~ 0.85 0.6
# Wood
execute if block ~ ~ ~ #minecraft:planks run playsound minecraft:block.wood.break hostile @a ~ ~ ~ 0.85 0.6
execute if block ~ ~ ~ #minecraft:logs run playsound minecraft:block.wood.break hostile @a ~ ~ ~ 0.85 0.6
# Leaves
execute if block ~ ~ ~ #minecraft:leaves run playsound minecraft:block.grass.break hostile @a ~ ~ ~ 0.85 0.6
# Stone
execute if block ~ ~ ~ #minecraft:base_stone_overworld run playsound minecraft:block.stone.break hostile @a ~ ~ ~ 0.85 0.6
execute if block ~ ~ ~ #minecraft:stone_bricks run playsound minecraft:block.stone.break hostile @a ~ ~ ~ 0.85 0.6
execute if block ~ ~ ~ minecraft:cobblestone run playsound minecraft:block.stone.break hostile @a ~ ~ ~ 0.85 0.6
# Other
execute if block ~ ~ ~ minecraft:hay_block run playsound minecraft:block.grass.break hostile @a ~ ~ ~ 0.85 0.6
execute if block ~ ~ ~ #minecraft:wool run playsound minecraft:block.wool.break hostile @a ~ ~ ~ 0.85 0.6
execute if block ~ ~0.2 ~ minecraft:snow run playsound minecraft:block.snow.break hostile @a ~ ~ ~ 0.85 0.6
execute if block ~ ~ ~ #minecraft:ice run playsound minecraft:block.glass.break hostile @a ~ ~ ~ 0.85 0.7
execute if block ~ ~ ~ minecraft:obsidian run playsound minecraft:block.stone.break hostile @a ~ ~ ~ 0.85 0.4
execute if block ~ ~ ~ minecraft:slime_block run playsound minecraft:block.slime_block.break hostile @a ~ ~ ~ 0.85 0.4

# End
execute if block ~ ~ ~ minecraft:end_stone run playsound minecraft:block.stone.break hostile @a ~ ~ ~ 0.85 0.6

# Nether
execute if block ~ ~ ~ #minecraft:base_stone_nether run playsound minecraft:block.netherrack.break hostile @a ~ ~ ~ 0.85 0.6
execute if block ~ ~ ~ #minecraft:nylium run playsound minecraft:block.wart_block.break hostile @a ~ ~ ~ 0.85 0.6
execute if block ~ ~ ~ minecraft:nether_bricks run playsound minecraft:block.nether_bricks.break hostile @a ~ ~ ~ 0.85 0.6
execute if block ~ ~ ~ #minecraft:soul_fire_base_blocks run playsound minecraft:block.soul_sand.break hostile @a ~ ~ ~ 0.85 0.6

# Containers
execute if block ~ ~ ~ minecraft:chest run playsound minecraft:block.wood.break hostile @a ~ ~ ~ 0.85 0.6
execute if block ~ ~ ~ minecraft:trapped_chest run playsound minecraft:block.wood.break hostile @a ~ ~ ~ 0.85 0.6
execute if block ~ ~ ~ minecraft:ender_chest run playsound minecraft:block.ender_chest.open hostile @a ~ ~ ~ 0.85 0.4
execute if block ~ ~ ~ minecraft:hopper run playsound minecraft:block.metal.break hostile @a ~ ~ ~ 0.85 0.6
execute if block ~ ~ ~ minecraft:beacon run playsound minecraft:block.glass.break hostile @a ~ ~ ~ 0.85 0.4


execute if block ~ ~ ~ minecraft:lava run playsound minecraft:block.lava.pop hostile @a ~ ~ ~ 0.85 0.6
