## by Tschipcraft


## General
effect give @e[tag=to_spa_a_verify] invisibility 1 0 true
execute store result score Global spa_a_count if entity @e[type=minecraft:area_effect_cloud,tag=s_a_p]
# welcome & Menu
scoreboard players add @a spa_a_welcome 0
scoreboard players enable @a menu
execute as @a[scores={menu=1..60,spa_a_welcome=1}] run scoreboard players set @s spa_a_welcome 0
execute as @a[scores={spa_a_welcome=0}] run function spawnanimations:messages/welcome
execute as @a[scores={spa_a_how_to_use=1}] run function spawnanimations:messages/how_to_use

execute as @a[scores={menu=1..60,spa_a_welcome=1}] run scoreboard players set @s spa_a_welcome 2
execute as @a[scores={menu=61..}] run scoreboard players set @s spa_a_welcome 1
scoreboard players reset @a[scores={menu=122..}] menu
scoreboard players add @a[scores={menu=1..}] menu 1


schedule function spawnanimations:loop 5t
