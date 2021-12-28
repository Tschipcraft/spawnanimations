## by Tschipcraft

scoreboard objectives remove spa_a_timer
scoreboard objectives remove spa_a_count
scoreboard objectives remove spa_a_welcome
scoreboard objectives remove spa_a_how_to_use
scoreboard objectives remove menu
execute as @e[tag=to_spa_a_verify] run data merge entity @s {Silent:0b}
tag @e[tag=to_spa_a_verify] remove to_spa_a_verify
execute as @e[tag=spa_a_verify] run data merge entity @s {Silent:0b,Fire:0s}
execute as @e[tag=spa_a_verify] at @s run tp @s ~ ~2.3 ~
tag @e[tag=spa_a_verify] remove spa_a_verify
kill @e[tag=s_a_p]


datapack disable "file/spawnanimations.zip"
datapack disable "file/spawnanimations"
datapack disable "file/spawnanimations-v1.8-mc1.18-datapack.zip"


say Uninstalled by @s!
