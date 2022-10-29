## by Tschipcraft

scoreboard objectives add spa_a_timer dummy
scoreboard objectives add spa_a_count dummy
scoreboard objectives add menu trigger
scoreboard objectives add spa_a_welcome trigger
scoreboard objectives add spa_a_how_to_use trigger

scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy

scoreboard objectives add spa_settings dummy

# defaults
execute unless score spa_distance spa_settings matches 0..100 run scoreboard players set spa_distance spa_settings 20
execute unless score spa_mode spa_settings matches 0..1 run scoreboard players set spa_mode spa_settings 1

schedule clear spawnanimations:loop
schedule function spawnanimations:loop 2s

execute at @r run function spawnanimations:legacy/test
