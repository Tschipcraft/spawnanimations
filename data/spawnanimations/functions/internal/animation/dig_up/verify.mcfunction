## by Tschipcraft

tag @s add ts.sa.verified
tag @s remove ts.sa.verify

scoreboard players reset @s ts.sa.e.y
scoreboard players reset @s ts.sa.e.stage
scoreboard players reset @s ts.sa.e.speed
tp @s ~ ~0.05 ~
execute as @s[tag=ts.sa.protected] at @s run function spawnanimations:internal/animation/dig_up/unprotect

execute positioned ~ ~0.5 ~ run function spawnanimations:internal/animation/dig_up/particles/particles
