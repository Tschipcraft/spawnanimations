##by Tschipcraft

# Get player position
data modify storage spawnanimations:temp Pos set from entity @s Pos
execute store result score $global ts.sa.x run data get storage spawnanimations:temp Pos[0]
execute store result score $global ts.sa.y run data get storage spawnanimations:temp Pos[1]
execute store result score $global ts.sa.z run data get storage spawnanimations:temp Pos[2]

# Activate entities
execute if score $activation_dist ts.sa.settings matches 25..100 as @e[type=!#spawnanimations:exclude,tag=ts.sa.to_verify,distance=..100,limit=10,sort=random] at @s run function spawnanimations:internal/calc_activation
execute if score $activation_dist ts.sa.settings matches 1..24 as @e[type=!#spawnanimations:exclude,tag=ts.sa.to_verify,distance=..25,limit=5,sort=random] at @s run function spawnanimations:internal/calc_activation
