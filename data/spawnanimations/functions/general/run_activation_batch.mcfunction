##by Tschipcraft

# Get pos
execute store result score $global ts.sa.x run data get entity @s Pos[0]
execute store result score $global ts.sa.y run data get entity @s Pos[1]
execute store result score $global ts.sa.z run data get entity @s Pos[2]

# Activate entities
execute as @e[type=!area_effect_cloud,tag=ts.sa.to_verify,distance=..100,limit=10,sort=random] at @s run function spawnanimations:general/calc_activation
