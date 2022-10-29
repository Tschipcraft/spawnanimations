##by Tschipcraft
# @s/~ ~ ~ is tested entity; global is player position

# Get position
execute store result score @s x run data get entity @s Pos[0]
execute store result score @s y run data get entity @s Pos[1]
execute store result score @s z run data get entity @s Pos[2]

# Calculate diff
scoreboard players operation @s x -= global x
scoreboard players operation @s y -= global y
scoreboard players operation @s z -= global z

# Make sure value is positive
scoreboard players set minus x -1
execute if score @s x matches ..0 run scoreboard players operation @s x *= minus x
execute if score @s y matches ..0 run scoreboard players operation @s y *= minus x
execute if score @s z matches ..0 run scoreboard players operation @s z *= minus x

# Add dis together
scoreboard players operation @s x += @s y
scoreboard players operation @s x += @s z

# Test
execute if score @s x <= spa_distance spa_settings run function spawnanimations:general/verify
execute if score spa_mode spa_settings matches 0 if score @s x > spa_distance spa_settings run function spawnanimations:animation/verify_in_air
