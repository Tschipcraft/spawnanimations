##by Tschipcraft
# @s/~ ~ ~ is tested entity; global is player position

# Get position
execute store result score @s ts.sa.x run data get entity @s Pos[0]
execute store result score @s ts.sa.y run data get entity @s Pos[1]
execute store result score @s ts.sa.z run data get entity @s Pos[2]

# Calculate diff
scoreboard players operation @s ts.sa.x -= $global ts.sa.x
scoreboard players operation @s ts.sa.y -= $global ts.sa.y
scoreboard players operation @s ts.sa.z -= $global ts.sa.z

# Make sure value is positive
scoreboard players set $minus ts.sa.x -1
execute if score @s ts.sa.x matches ..0 run scoreboard players operation @s ts.sa.x *= $minus ts.sa.x
execute if score @s ts.sa.y matches ..0 run scoreboard players operation @s ts.sa.y *= $minus ts.sa.x
execute if score @s ts.sa.z matches ..0 run scoreboard players operation @s ts.sa.z *= $minus ts.sa.x

# Add dis together
scoreboard players operation @s ts.sa.x += @s ts.sa.y
scoreboard players operation @s ts.sa.x += @s ts.sa.z

# Test
execute if score @s ts.sa.x <= ts.sa.distance ts.sa.settings as @s[type=!#spawnanimations:always_poof_animation] run function spawnanimations:internal/animation/dig_up/start
execute if score @s ts.sa.x <= ts.sa.distance ts.sa.settings as @s[type=#spawnanimations:always_poof_animation] run function spawnanimations:internal/animation/dig_up/verify_in_air


execute if score ts.sa.mode ts.sa.settings matches 0 if score @s ts.sa.x > ts.sa.distance ts.sa.settings run function spawnanimations:internal/animation/dig_up/verify_in_air
