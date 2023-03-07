## by Tschipcraft

## General
effect give @e[tag=ts.sa.to_verify] invisibility 1 0 true
execute store result score $global ts.sa.count if entity @e[type=minecraft:area_effect_cloud,tag=ts.sa.p]

# Welcome & Menu
scoreboard players add @a ts.sa.welcome 0
scoreboard players enable @a tschipcraft.menu
execute as @a[scores={tschipcraft.menu=1..60,ts.sa.welcome=1}] run scoreboard players set @s ts.sa.welcome 0
execute as @a[scores={ts.sa.welcome=0}] run function spawnanimations:messages/welcome
execute as @a[scores={ts.sa.how_to_use=1}] run function spawnanimations:messages/how_to_use

execute as @a[scores={tschipcraft.menu=1..60,ts.sa.welcome=1}] run scoreboard players set @s ts.sa.welcome 2
execute as @a[scores={tschipcraft.menu=61..}] run scoreboard players set @s ts.sa.welcome 1
scoreboard players reset @a[scores={tschipcraft.menu=122..}] tschipcraft.menu
scoreboard players add @a[scores={tschipcraft.menu=1..}] tschipcraft.menu 1


schedule function spawnanimations:loop 5t
