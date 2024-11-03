##by Tschipcraft

# Preserve gamerule
execute store result score $gamerule.tile_drops ts.sa.settings run gamerule doTileDrops
execute if score $gamerule.tile_drops ts.sa.settings matches 1 run gamerule doTileDrops false
# Preserve bedrock/air
scoreboard players set $block ts.sa.settings 0
execute if block ~ -64 ~ minecraft:bedrock if blocks ~1 -64 ~1 ~-1 -64 ~-1 ~ -64 ~ all run scoreboard players set $block ts.sa.settings 1
execute if block ~ -64 ~ minecraft:air if blocks ~1 -64 ~1 ~-1 -64 ~-1 ~ -64 ~ all run scoreboard players set $block ts.sa.settings 2
# Nether/End
execute if score $block ts.sa.settings matches 0 if block ~ 0 ~ minecraft:bedrock if blocks ~1 0 ~1 ~-1 0 ~-1 ~ 0 ~ all run scoreboard players set $block ts.sa.settings 3
execute if score $block ts.sa.settings matches 0 if block ~ 0 ~ minecraft:air if blocks ~1 0 ~1 ~-1 0 ~-1 ~ 0 ~ all run scoreboard players set $block ts.sa.settings 4

# Cancel if block ontop is not in exclude list
execute unless block ~ ~1 ~ #spawnanimations:exclude run scoreboard players set $block ts.sa.settings 0
# Cancel if disabled via settings menu
execute if score $play_unsupport ts.sa.settings matches -1..0 run scoreboard players set $block ts.sa.settings 0

# Copy blocks to void
execute if score $block ts.sa.settings matches 1..2 run clone ~1 ~ ~1 ~-1 ~ ~-1 ~-1 -64 ~-1
execute if score $block ts.sa.settings matches 3..4 run clone ~1 ~ ~1 ~-1 ~ ~-1 ~-1 0 ~-1

# 'Break' the block (particles + sound)
execute unless score $block ts.sa.settings matches 0 unless block ~ ~ ~ #spawnanimations:exclude run setblock ~ ~ ~ minecraft:air destroy

# Restore blocks
execute if score $block ts.sa.settings matches 1..2 run clone ~1 -64 ~1 ~-1 -64 ~-1 ~-1 ~ ~-1 masked
execute if score $block ts.sa.settings matches 3..4 run clone ~1 0 ~1 ~-1 0 ~-1 ~-1 ~ ~-1 masked

# Cleanup
execute if score $block ts.sa.settings matches 1 run fill ~1 -64 ~1 ~-1 -64 ~-1 minecraft:bedrock
execute if score $block ts.sa.settings matches 2 run fill ~1 -64 ~1 ~-1 -64 ~-1 minecraft:air
execute if score $block ts.sa.settings matches 3 run fill ~1 0 ~1 ~-1 0 ~-1 minecraft:bedrock
execute if score $block ts.sa.settings matches 4 run fill ~1 0 ~1 ~-1 0 ~-1 minecraft:air

# Fallback sound
execute if score $play_unsupport ts.sa.settings matches 1..2 if score $block ts.sa.settings matches 0 run playsound minecraft:block.stone.break block @a ~ ~ ~ 1 0.6

# Kill potential dropped items from containers
execute unless score $block ts.sa.settings matches 0 run kill @e[type=minecraft:item,nbt={Age:0s},distance=..2]

# Preserve gamerule
execute if score $gamerule.tile_drops ts.sa.settings matches 1 run gamerule doTileDrops true
