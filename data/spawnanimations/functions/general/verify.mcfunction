## by Tschipcraft

tag @s add ts.sa.verify
# Dig up (Normal)
execute unless entity @s[type=#spawnanimations:always_poof_animation] unless entity @s[type=minecraft:giant] positioned ~ ~0.2 ~ align y run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[ts.sa.particles,ts.sa.p],ReapplicationDelay:0,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:60,DurationOnUse:0f}
#execute unless entity @s[type=#spawnanimations:always_poof_animation] unless entity @s[type=minecraft:giant] run summon minecraft:area_effect_cloud ~ ~-2.3 ~ {Tags:[ts.sa.verify,s_a_p],ReapplicationDelay:0,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:60,DurationOnUse:0f}

# Dig up (Giant)
execute unless entity @s[type=#spawnanimations:always_poof_animation] if entity @s[type=minecraft:giant] positioned ~ ~0.2 ~ align y if block ~ ~-1 ~ #spawnanimations:supported run summon minecraft:area_effect_cloud ~ ~-14 ~ {Tags:[ts.sa.verify,ts.sa.p,ts.sa.verify_giant],ReapplicationDelay:0,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:60,DurationOnUse:0f}
#execute unless entity @s[type=#spawnanimations:always_poof_animation] if entity @s[type=minecraft:giant] if block ~ ~-1 ~ #spawnanimations:supported run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[ts.sa.giant_particles,ts.sa.p,ts.sa.particles],ReapplicationDelay:0,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:60,DurationOnUse:0f}

# Poof
execute unless entity @s[type=#spawnanimations:always_poof_animation] if block ~ ~-1 ~ #spawnanimations:exclude run function spawnanimations:animation/verify_in_air
execute if entity @s[type=minecraft:giant] unless block ~ ~-1 ~ #spawnanimations:supported run function spawnanimations:animation/verify_in_air
execute if entity @s[type=#spawnanimations:always_poof_animation] run function spawnanimations:animation/verify_in_air
execute as @s[tag=ts.sa.to_verify] positioned ~ ~0.2 ~ align y unless block ~ ~ ~ #spawnanimations:exclude unless block ~ ~-1 ~ #spawnanimations:supported run function spawnanimations:animation/verify_in_air

execute unless entity @s[type=#spawnanimations:always_poof_animation] unless entity @s[type=minecraft:giant] if entity @s[tag=ts.sa.to_verify] run tp @s ~ ~-2.3 ~
execute unless entity @s[type=#spawnanimations:always_poof_animation] if entity @s[type=minecraft:giant,tag=ts.sa.to_verify] if block ~ ~-1 ~ #spawnanimations:supported run tp @s ~ ~-14 ~

tag @s remove ts.sa.to_verify


# Correction for snow layers
execute as @e[type=minecraft:area_effect_cloud,tag=ts.sa.particles,distance=..2] at @s if block ~ ~ ~ minecraft:snow run tp @s ~ ~1 ~
