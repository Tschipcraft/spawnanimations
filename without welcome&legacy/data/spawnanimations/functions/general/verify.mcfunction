## by Tschipcraft

tag @s add spa_a_verify
# Dig up (Normal)
execute unless entity @s[type=#spawnanimations:always_poof_animation] unless entity @s[type=giant] positioned ~ ~0.2 ~ align y if block ~ ~-1 ~ #spawnanimations:supported run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[particles,s_a_p],ReapplicationDelay:0,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:60,DurationOnUse:0f}
execute unless entity @s[type=#spawnanimations:always_poof_animation] unless entity @s[type=giant] if block ~ ~-1 ~ #spawnanimations:supported run summon minecraft:area_effect_cloud ~ ~-2.3 ~ {Tags:[spa_a_verify,s_a_p],ReapplicationDelay:0,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:60,DurationOnUse:0f}

# Dig up (Giant)
execute unless entity @s[type=#spawnanimations:always_poof_animation] if entity @s[type=giant] positioned ~ ~0.2 ~ align y if block ~ ~-1 ~ #spawnanimations:supported run summon minecraft:area_effect_cloud ~ ~-14 ~ {Tags:[spa_a_verify,s_a_p,spa_a_verify_giant],ReapplicationDelay:0,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:60,DurationOnUse:0f}
execute unless entity @s[type=#spawnanimations:always_poof_animation] if entity @s[type=giant] if block ~ ~-1 ~ #spawnanimations:supported run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[giant_particles,s_a_p,particles],ReapplicationDelay:0,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:60,DurationOnUse:0f}

# Poof
execute unless entity @s[type=#spawnanimations:always_poof_animation] unless block ~ ~-1 ~ #spawnanimations:supported run function spawnanimations:animation/verify_in_air
execute if entity @s[type=#spawnanimations:always_poof_animation] run function spawnanimations:animation/verify_in_air


tag @s remove to_spa_a_verify
execute unless entity @s[type=#spawnanimations:always_poof_animation] unless entity @s[type=giant] if block ~ ~-1 ~ #spawnanimations:supported run tp @s ~ ~-2.3 ~
execute unless entity @s[type=#spawnanimations:always_poof_animation] if entity @s[type=giant] if block ~ ~-1 ~ #spawnanimations:supported run tp @s ~ ~-14 ~


execute as @e[type=minecraft:area_effect_cloud,tag=particles,distance=..2] at @s if block ~ ~ ~ snow run tp @s ~ ~1 ~
