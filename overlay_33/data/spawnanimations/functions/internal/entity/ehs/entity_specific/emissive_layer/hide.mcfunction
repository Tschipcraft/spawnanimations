##by Tschipcraft
# Shrinks entities with an emissive layer to lowest possible scale (0.0625)
# We do this using a negative scale modifier to not disturb the base scale value

attribute @s minecraft:generic.scale modifier add b3b6680a-c78e-4476-88b1-c21017dd4ecc spawnanimations.ehs.scale -1000000000000000000000000000000 add_value
tag @s add ts.sa.ehs.shrunk

# Save initial position
data modify storage spawnanimations:temp Pos set from entity @s Pos
execute store result score @s ts.sa.prev_x run data get storage spawnanimations:temp Pos[0] 10
execute store result score @s ts.sa.prev_y run data get storage spawnanimations:temp Pos[1] 10
execute store result score @s ts.sa.prev_z run data get storage spawnanimations:temp Pos[2] 10
