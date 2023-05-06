## by Tschipcraft

## Advance animation
scoreboard players add @s ts.sa.timer 5
scoreboard players operation @s ts.sa.timer += @s ts.sa.e.speed

## Reset entity to normal position for displaying particles and playing sounds
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s ts.sa.e.y

execute at @s positioned ~ ~-0.2 ~ run function spawnanimations:internal/animation/dig_up/particles/particles

# Sounds
execute as @s[scores={ts.sa.timer=-395..,ts.sa.e.stage=0}] at @s positioned ~ ~-0.2 ~ run function spawnanimations:internal/animation/dig_up/sound/sound
execute as @s[scores={ts.sa.timer=-200..,ts.sa.e.stage=1}] at @s positioned ~ ~-0.2 ~ run function spawnanimations:internal/animation/dig_up/sound/sound
execute as @s[scores={ts.sa.timer=-100..,ts.sa.e.stage=2}] at @s positioned ~ ~-0.2 ~ run function spawnanimations:internal/animation/dig_up/sound/sound
execute as @s[scores={ts.sa.timer=5..,ts.sa.e.stage=3}] at @s positioned ~ ~-0.2 ~ run function spawnanimations:internal/animation/dig_up/sound/sound2


## Calculate position
scoreboard players set $factor ts.sa.e.y 1
execute if entity @s[type=minecraft:enderman] run scoreboard players set $factor ts.sa.e.y 2
execute if entity @s[type=minecraft:giant] run scoreboard players set $factor ts.sa.e.y 5
scoreboard players set $offset ts.sa.e.y 10

scoreboard players operation #temp ts.sa.e.y = @s ts.sa.timer
scoreboard players operation #temp ts.sa.e.y *= $factor ts.sa.e.y
scoreboard players operation #temp ts.sa.e.y += $offset ts.sa.e.y
scoreboard players operation #temp ts.sa.e.y += @s ts.sa.e.y

execute store result entity @s Pos[1] double 0.01 run scoreboard players get #temp ts.sa.e.y

## Show the mob
execute as @s[tag=ts.sa.hidden,scores={ts.sa.timer=-280..}] run function spawnanimations:internal/animation/dig_up/unhide

## Special particles
execute if block ~ ~0.4 ~ minecraft:lava run particle minecraft:falling_lava ~ ~1.1 ~ 0.35 0.35 0.35 1 2


## Prevent suffocation
execute as @s[tag=ts.sa.protected,scores={ts.sa.timer=-200..}] at @s anchored eyes if block ^ ^-0.1 ^ #spawnanimations:nonsolid run function spawnanimations:internal/animation/dig_up/unprotect

## Prevent fall damage
data merge entity @s {FallDistance:0f}

## Finish animation
execute as @s[scores={ts.sa.timer=5..}] at @s run function spawnanimations:internal/animation/dig_up/verify
execute as @s[scores={ts.sa.timer=-100..-20}] at @s if block ~ ~ ~ #spawnanimations:nonsolid run function spawnanimations:internal/animation/dig_up/verify_in_air
