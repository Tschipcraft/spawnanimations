## by Tschipcraft

## Advance animation
scoreboard players add @s ts.sa.timer 5
scoreboard players operation @s ts.sa.timer += @s ts.sa.e.speed

## Reset entity to normal position for displaying particles and playing sounds
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s ts.sa.e.y

execute at @s positioned ~ ~-0.25 ~ run function spawnanimations:internal/animation/dig_up/particles/particles

# Sounds
execute as @s[scores={ts.sa.timer=-395..,ts.sa.e.stage=0}] at @s positioned ~ ~-0.2 ~ run function spawnanimations:internal/animation/dig_up/sound/sound
execute as @s[scores={ts.sa.timer=-200..,ts.sa.e.stage=1}] at @s positioned ~ ~-0.2 ~ run function spawnanimations:internal/animation/dig_up/sound/sound
execute as @s[scores={ts.sa.timer=-100..,ts.sa.e.stage=2}] at @s positioned ~ ~-0.2 ~ run function spawnanimations:internal/animation/dig_up/sound/sound
execute as @s[scores={ts.sa.timer=5..,ts.sa.e.stage=3}] at @s positioned ~ ~-0.2 ~ run function spawnanimations:internal/animation/dig_up/sound/sound2


## Calculate y position
execute unless score @s ts.sa.e.height matches 1..5 run scoreboard players set @s ts.sa.e.height 1
execute if entity @s[type=minecraft:giant] run scoreboard players set @s ts.sa.e.height 5
scoreboard players set $offset ts.sa.e.y 10

scoreboard players operation #temp ts.sa.e.y = @s ts.sa.timer
scoreboard players operation #temp ts.sa.e.y *= @s ts.sa.e.height
scoreboard players operation #temp ts.sa.e.y += $offset ts.sa.e.y
scoreboard players operation #temp ts.sa.e.y += @s ts.sa.e.y

execute store result entity @s Pos[1] double 0.01 run scoreboard players get #temp ts.sa.e.y

# Dynamic height detection
execute as @s[scores={ts.sa.timer=..-270}] at @s anchored eyes if block ^ ^0.2 ^ #spawnanimations:nonsolid unless block ~ ~ ~ #spawnanimations:nonsolid run scoreboard players add @s ts.sa.e.height 1

## Show the mob
execute as @s[tag=ts.sa.hidden,scores={ts.sa.timer=-280..}] run function spawnanimations:internal/entity/unhide

## Special particles
execute if block ~ ~0.4 ~ minecraft:lava run particle minecraft:falling_lava ~ ~1.1 ~ 0.35 0.35 0.35 1 2


## Prevent suffocation
execute as @s[tag=ts.sa.protected,scores={ts.sa.timer=-200..}] at @s anchored eyes if block ^ ^-0.1 ^ #spawnanimations:nonsolid if block ^ ^0.9 ^ #spawnanimations:nonsolid run function spawnanimations:internal/entity/unprotect

## Prevent fall damage
data merge entity @s {FallDistance:0f}

## Finish animation
execute as @s[scores={ts.sa.timer=5..}] at @s run function spawnanimations:internal/animation/dig_up/verify
execute as @s[scores={ts.sa.timer=-100..-20,ts.sa.e.height=1..2}] at @s if block ~ ~ ~ #spawnanimations:nonsolid if block ~ ~1 ~ #spawnanimations:nonsolid if block ~ ~2 ~ #spawnanimations:nonsolid anchored eyes if block ^ ^-0.1 ^ #spawnanimations:nonsolid if block ^ ^0.9 ^ #spawnanimations:nonsolid run function spawnanimations:internal/animation/dig_up/verify_in_air
