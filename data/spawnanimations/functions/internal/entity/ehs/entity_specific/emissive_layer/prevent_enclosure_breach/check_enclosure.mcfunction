##by Tschipcraft
# Checks if shrunk entity @s is trying to escape a potential enclosure

# Inside block
execute unless block ~ ~ ~ #spawnanimations:nonsolid run function spawnanimations:internal/entity/ehs/entity_specific/emissive_layer/prevent_enclosure_breach/check_distance

# Model default enderman hitbox size
execute as @s[type=minecraft:enderman,tag=ts.sa.to_verify] unless block ^0.3 ^1.5 ^0.3 #spawnanimations:nonsolid run function spawnanimations:internal/entity/ehs/entity_specific/emissive_layer/prevent_enclosure_breach/check_distance
execute as @s[type=minecraft:enderman,tag=ts.sa.to_verify] unless block ^0.3 ^1.5 ^-0.3 #spawnanimations:nonsolid run function spawnanimations:internal/entity/ehs/entity_specific/emissive_layer/prevent_enclosure_breach/check_distance
execute as @s[type=minecraft:enderman,tag=ts.sa.to_verify] unless block ^-0.3 ^1.5 ^0.3 #spawnanimations:nonsolid run function spawnanimations:internal/entity/ehs/entity_specific/emissive_layer/prevent_enclosure_breach/check_distance
execute as @s[type=minecraft:enderman,tag=ts.sa.to_verify] unless block ^-0.3 ^1.5 ^-0.3 #spawnanimations:nonsolid run function spawnanimations:internal/entity/ehs/entity_specific/emissive_layer/prevent_enclosure_breach/check_distance
execute as @s[type=minecraft:enderman,tag=ts.sa.to_verify] unless block ^0.3 ^2.9 ^0.3 #spawnanimations:nonsolid run function spawnanimations:internal/entity/ehs/entity_specific/emissive_layer/prevent_enclosure_breach/check_distance
execute as @s[type=minecraft:enderman,tag=ts.sa.to_verify] unless block ^0.3 ^2.9 ^-0.3 #spawnanimations:nonsolid run function spawnanimations:internal/entity/ehs/entity_specific/emissive_layer/prevent_enclosure_breach/check_distance
execute as @s[type=minecraft:enderman,tag=ts.sa.to_verify] unless block ^-0.3 ^2.9 ^0.3 #spawnanimations:nonsolid run function spawnanimations:internal/entity/ehs/entity_specific/emissive_layer/prevent_enclosure_breach/check_distance
execute as @s[type=minecraft:enderman,tag=ts.sa.to_verify] unless block ^-0.3 ^2.9 ^-0.3 #spawnanimations:nonsolid run function spawnanimations:internal/entity/ehs/entity_specific/emissive_layer/prevent_enclosure_breach/check_distance

# Model default spider hitbox size
execute as @s[type=minecraft:spider,tag=ts.sa.to_verify] unless block ~0.7 ~ ~0.7 #spawnanimations:nonsolid run function spawnanimations:internal/entity/ehs/entity_specific/emissive_layer/prevent_enclosure_breach/check_distance
execute as @s[type=minecraft:spider,tag=ts.sa.to_verify] unless block ~0.7 ~ ~-0.7 #spawnanimations:nonsolid run function spawnanimations:internal/entity/ehs/entity_specific/emissive_layer/prevent_enclosure_breach/check_distance
execute as @s[type=minecraft:spider,tag=ts.sa.to_verify] unless block ~-0.7 ~ ~-0.7 #spawnanimations:nonsolid run function spawnanimations:internal/entity/ehs/entity_specific/emissive_layer/prevent_enclosure_breach/check_distance
execute as @s[type=minecraft:spider,tag=ts.sa.to_verify] unless block ~-0.7 ~ ~0.7 #spawnanimations:nonsolid run function spawnanimations:internal/entity/ehs/entity_specific/emissive_layer/prevent_enclosure_breach/check_distance
execute as @s[type=minecraft:spider,tag=ts.sa.to_verify] unless block ~ ~0.9 ~ #spawnanimations:nonsolid run function spawnanimations:internal/entity/ehs/entity_specific/emissive_layer/prevent_enclosure_breach/check_distance

# Update position
execute if entity @s[tag=ts.sa.to_verify] run data modify storage spawnanimations:temp Pos set from entity @s Pos
execute if entity @s[tag=ts.sa.to_verify] store result score @s ts.sa.prev_x run data get storage spawnanimations:temp Pos[0] 10
execute if entity @s[tag=ts.sa.to_verify] store result score @s ts.sa.prev_y run data get storage spawnanimations:temp Pos[1] 10
execute if entity @s[tag=ts.sa.to_verify] store result score @s ts.sa.prev_z run data get storage spawnanimations:temp Pos[2] 10
