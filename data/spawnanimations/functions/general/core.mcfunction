## by Tschipcraft

scoreboard players add @s spa_a_timer 1
tp @s ~ ~0.04 ~
execute as @s[type=area_effect_cloud,tag=spa_a_verify_giant] at @s run tp @s ~ ~0.21 ~
execute as @s[type=!area_effect_cloud,scores={spa_a_timer=60..}] run function spawnanimations:general/verified

execute as @s[type=!area_effect_cloud,scores={spa_a_timer=4..5}] run effect clear @s invisibility
execute as @s[type=!area_effect_cloud,scores={spa_a_timer=45}] run data merge entity @s {Silent:0b,Fire:0s}
execute as @s[type=!area_effect_cloud,scores={spa_a_timer=1..60}] at @s at @e[tag=spa_a_verify,type=area_effect_cloud,limit=1,sort=nearest,distance=..1] run tp @s ~ ~ ~
effect give @s[type=!area_effect_cloud,scores={spa_a_timer=1..44}] resistance 1 255 true
