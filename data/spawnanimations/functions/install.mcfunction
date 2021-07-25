## by Tschipcraft

scoreboard objectives add spa_a_timer dummy
scoreboard objectives add spa_a_count dummy
scoreboard objectives add menu trigger
scoreboard objectives add spa_a_welcome trigger
scoreboard objectives add spa_a_how_to_use trigger

schedule clear spawnanimations:loop
schedule function spawnanimations:loop 2s

execute at @r run function spawnanimations:legacy/test
