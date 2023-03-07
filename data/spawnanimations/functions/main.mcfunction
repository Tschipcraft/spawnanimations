## by Tschipcraft

# To edit mobs that are affected, see ../tags/entity_types/normal_animation.json
# Normal
execute as @e[type=#spawnanimations:normal_animation,tag=!ts.sa.verify,tag=!ts.sa.verified,tag=!ts.sa.to_verify,tag=!exclude,tag=!smithed.strict,tag=!ignore.global,limit=10,sort=arbitrary] run function spawnanimations:general/initalise

# Nether
execute as @e[type=#spawnanimations:nether_animation,tag=!ts.sa.verify,tag=!ts.sa.verified,tag=!ts.sa.to_verify,tag=!exclude,tag=!smithed.strict,tag=!ignore.global,limit=7,sort=arbitrary] run function spawnanimations:general/initalise_nether

# End
execute as @e[type=#spawnanimations:end_animation,tag=!ts.sa.verify,tag=!ts.sa.verified,tag=!ts.sa.to_verify,tag=!exclude,tag=!smithed.strict,tag=!ignore.global,limit=7,sort=arbitrary] run function spawnanimations:general/initalise_end

# Giant
execute as @e[type=minecraft:giant,tag=!ts.sa.verify,tag=!ts.sa.verified,tag=!ts.sa.to_verify,tag=!exclude,tag=!smithed.strict,tag=!ignore.global,limit=2] run function spawnanimations:general/initalise



## Animation trigger
execute if score $global ts.sa.count matches ..100 as @a[gamemode=!spectator,sort=random,limit=5] at @s run function spawnanimations:general/run_activation_batch


## Animation
execute as @e[tag=ts.sa.verify,tag=!smithed.strict,tag=!ignore.global] at @s run function spawnanimations:general/core

## Particles
execute as @e[type=minecraft:area_effect_cloud,tag=ts.sa.particles,tag=!smithed.strict,tag=!ignore.global] at @s run function spawnanimations:general/particles
