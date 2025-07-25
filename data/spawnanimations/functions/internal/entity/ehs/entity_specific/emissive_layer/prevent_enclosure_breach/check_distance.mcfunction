##by Tschipcraft
# Shrunk entity @s is trying to escape an enclosure, when not to far away from its previous position we move it back

# Get current position
data modify storage spawnanimations:temp Pos set from entity @s Pos
execute store result score #current ts.sa.prev_x run data get storage spawnanimations:temp Pos[0] 10
execute store result score #current ts.sa.prev_y run data get storage spawnanimations:temp Pos[1] 10
execute store result score #current ts.sa.prev_z run data get storage spawnanimations:temp Pos[2] 10

scoreboard players operation #previous ts.sa.prev_x = @s ts.sa.prev_x
scoreboard players operation #previous ts.sa.prev_y = @s ts.sa.prev_y
scoreboard players operation #previous ts.sa.prev_z = @s ts.sa.prev_z

# Calculate diff
scoreboard players operation #previous ts.sa.prev_x -= #current ts.sa.prev_x
scoreboard players operation #previous ts.sa.prev_y -= #current ts.sa.prev_y
scoreboard players operation #previous ts.sa.prev_z -= #current ts.sa.prev_z

# Make sure value is positive
execute if score #previous ts.sa.prev_x matches ..0 run scoreboard players operation #previous ts.sa.prev_x *= #minus ts.sa.x
execute if score #previous ts.sa.prev_y matches ..0 run scoreboard players operation #previous ts.sa.prev_y *= #minus ts.sa.x
execute if score #previous ts.sa.prev_z matches ..0 run scoreboard players operation #previous ts.sa.prev_z *= #minus ts.sa.x

# Add distances together
scoreboard players operation #previous ts.sa.prev_x += #previous ts.sa.prev_y
scoreboard players operation #previous ts.sa.prev_x += #previous ts.sa.prev_z

# Move entity back to previous location if it moved not too far (distance times 10)
execute if score #previous ts.sa.prev_x matches ..30 run function spawnanimations:internal/entity/ehs/entity_specific/emissive_layer/prevent_enclosure_breach/move_back

# Trigger animation any way
function spawnanimations:internal/animation/dig_up/start
