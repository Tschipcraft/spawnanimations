## by Tschipcraft

# Particles for supported blocks
# Sand
execute if block ~ ~ ~ #minecraft:sand unless block ~ ~ ~ minecraft:red_sand run particle block{block_state:"minecraft:sand"} ~ ~0.2 ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~ ~ minecraft:red_sand run particle block{block_state:"minecraft:red_sand"} ~ ~0.2 ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~ ~ minecraft:sandstone run particle block{block_state:"minecraft:sandstone"} ~ ~0.2 ~ 0.1 0 0.1 1 9 normal
# Dirt
execute if block ~ ~ ~ #spawnanimations:dirt unless block ~ ~ ~ #minecraft:sand unless block ~ ~0.2 ~ minecraft:gravel run particle block{block_state:"minecraft:dirt"} ~ ~ ~ 0.1 0 0.1 1 9 normal
# Wood
execute if block ~ ~ ~ #minecraft:planks run particle block{block_state:"minecraft:oak_planks"} ~ ~0.2 ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~ ~ #minecraft:logs run particle block{block_state:"minecraft:oak_log"} ~ ~0.2 ~ 0.1 0 0.1 1 9 normal
# Leaves
execute if block ~ ~ ~ #minecraft:leaves run particle block{block_state:"minecraft:oak_leaves"} ~ ~0.2 ~ 0.1 0 0.1 1 9 normal
# Stone
execute if block ~ ~ ~ #minecraft:stone_bricks run particle block{block_state:"minecraft:stone_bricks"} ~ ~0.2 ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~ ~ #minecraft:base_stone_overworld run particle block{block_state:"minecraft:stone"} ~ ~0.2 ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~ ~ minecraft:cobblestone run particle block{block_state:"minecraft:cobblestone"} ~ ~0.2 ~ 0.1 0 0.1 1 9 normal
# Other
execute if block ~ ~ ~ minecraft:hay_block run particle block{block_state:"minecraft:hay_block"} ~ ~0.2 ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~ ~ minecraft:gravel run particle block{block_state:"minecraft:gravel"} ~ ~0.2 ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~0.3 ~ minecraft:snow run particle block{block_state:"minecraft:snow"} ~ ~0.4 ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~ ~ minecraft:snow_block unless block ~ ~0.3 ~ minecraft:snow run particle block{block_state:"minecraft:snow_block"} ~ ~0.2 ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~ ~ #minecraft:ice run particle block{block_state:"minecraft:ice"} ~ ~0.2 ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~ ~ minecraft:obsidian run particle block{block_state:"minecraft:obsidian"} ~ ~0.2 ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~ ~ minecraft:slime_block run particle block{block_state:"minecraft:slime_block"} ~ ~0.2 ~ 0.1 0 0.1 1 9 normal

# End
execute if block ~ ~ ~ minecraft:end_stone run particle block{block_state:"minecraft:end_stone"} ~ ~0.2 ~ 0.1 0 0.1 1 9 normal

# Nether
execute if block ~ ~ ~ #minecraft:base_stone_nether run particle block{block_state:"minecraft:netherrack"} ~ ~0.2 ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~ ~ #minecraft:nylium run particle block{block_state:"minecraft:crimson_nylium"} ~ ~0.2 ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~ ~ minecraft:nether_bricks run particle block{block_state:"minecraft:nether_bricks"} ~ ~0.2 ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~ ~ #minecraft:soul_fire_base_blocks run particle block{block_state:"minecraft:soul_sand"} ~ ~0.2 ~ 0.1 0 0.1 1 9 normal
execute if block ~ ~ ~ #minecraft:soul_fire_base_blocks run particle minecraft:soul ~ ~0.2 ~ 0.1 0.1 0.1 0.01 1 normal

# Extra mob-specific particles
execute positioned ~ ~ ~ if entity @s[type=#spawnanimations:particles/nether_mob] run particle lava ~ ~0.4 ~ 0.1 0 0.1 0.01 1 normal
execute positioned ~ ~ ~ if entity @s[type=#spawnanimations:particles/end_mob] run particle dragon_breath ~ ~0.2 ~ 0.1 0 0.1 0.01 5 normal

execute positioned ~ ~ ~ if entity @s[type=minecraft:slime] run particle block{block_state:"minecraft:slime_block"} ~ ~0.2 ~ 0.1 0 0.1 0.01 5 normal
execute positioned ~ ~ ~ if entity @s[type=minecraft:magma_cube] run particle item{item:"magma_cream"} ~ ~0.2 ~ 0.1 0 0.1 0.01 5 normal


## Particles for the giant
execute as @s[type=minecraft:giant] run function spawnanimations:internal/animation/dig_up/particles/giant_particles
