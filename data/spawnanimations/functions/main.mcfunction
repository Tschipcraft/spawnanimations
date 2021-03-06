## by Tschipcraft

# To edit mobs that are affected, see ../tags/entity_types/normal_animation.json
# Normal
execute as @e[type=#spawnanimations:normal_animation,tag=!spa_a_verify,tag=!spa_a_verified,tag=!to_spa_a_verify,tag=!exclude,limit=10,sort=arbitrary] run function spawnanimations:general/initalise

# Nether
execute as @e[type=#spawnanimations:nether_animation,tag=!spa_a_verify,tag=!spa_a_verified,tag=!to_spa_a_verify,tag=!exclude,limit=7,sort=arbitrary] run function spawnanimations:general/initalise_nether

# End
execute as @e[type=#spawnanimations:end_animation,tag=!spa_a_verify,tag=!spa_a_verified,tag=!to_spa_a_verify,tag=!exclude,limit=7,sort=arbitrary] run function spawnanimations:general/initalise_end

# Giant
execute as @e[type=minecraft:giant,tag=!spa_a_verify,tag=!spa_a_verified,tag=!to_spa_a_verify,tag=!exclude,limit=2] run function spawnanimations:general/initalise



## When should the animation trigger?
execute if score Global spa_a_count matches ..100 as @a[gamemode=!spectator] at @s as @e[type=!area_effect_cloud,tag=to_spa_a_verify,distance=..20,limit=1,sort=arbitrary] at @s run function spawnanimations:general/verify


## Animation
execute as @e[tag=spa_a_verify] at @s run function spawnanimations:general/core

## Particles
execute as @e[type=minecraft:area_effect_cloud,tag=particles] at @s run function spawnanimations:general/particles
