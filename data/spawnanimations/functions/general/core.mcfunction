## by Tschipcraft

scoreboard players add @s ts.sa.timer 1
tp @s ~ ~0.04 ~
execute as @s[type=minecraft:area_effect_cloud,tag=ts.sa.verify_giant] at @s run tp @s ~ ~0.21 ~
execute as @s[type=!minecraft:area_effect_cloud,scores={ts.sa.timer=60..}] run function spawnanimations:general/verified

execute as @s[type=!minecraft:area_effect_cloud,scores={ts.sa.timer=4..5}] run effect clear @s invisibility
execute as @s[type=!minecraft:area_effect_cloud,scores={ts.sa.timer=45}] run data merge entity @s {Silent:0b,Fire:0s}
execute as @s[type=!minecraft:area_effect_cloud,scores={ts.sa.timer=1..60}] at @s at @e[tag=ts.sa.verify,type=minecraft:area_effect_cloud,limit=1,sort=nearest,distance=..1] run tp @s ~ ~ ~
effect give @s[type=!minecraft:area_effect_cloud,scores={ts.sa.timer=1..44}] resistance 1 255 true

## Fix for #1; TODO: Add Invulnerable check
#data merge entity @s[type=!minecraft:area_effect_cloud,scores={ts.sa.timer=1}] {Invulnerable:0}
#data merge entity @s[type=!minecraft:area_effect_cloud,scores={ts.sa.timer=59}] {Invulnerable:0}
