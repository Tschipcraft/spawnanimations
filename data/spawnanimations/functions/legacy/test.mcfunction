## by Tschipcraft

summon armor_stand ~ ~1 ~ {Tags:[spa_leg_test],Small:1b,NoGravity:1b,Marker:1b,Invisible:1b}
summon area_effect_cloud ~ ~-3 ~ {Tags:[spa_leg_test],ReapplicationDelay:0,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:100,DurationOnUse:0f}

execute as @e[type=area_effect_cloud,tag=spa_leg_test] at @s run tp @s ~ ~2 ~

schedule function spawnanimations:legacy/result 1s
