## by Tschipcraft

execute as @e[tag=to_spa_a_verify] run data merge entity @s {Silent:0b}
tag @e[tag=to_spa_a_verify] remove to_spa_a_verify
execute as @e[tag=spa_a_verify] run data merge entity @s {Silent:0b,Fire:0s}
execute as @e[tag=spa_a_verify] at @s run tp @s ~ ~2.3 ~
tag @e[tag=spa_a_verify] remove spa_a_verify
kill @e[tag=s_a_p]

schedule clear spawnanimations:loop
schedule function spawnanimations:loop 2s

say Reset by @s!
