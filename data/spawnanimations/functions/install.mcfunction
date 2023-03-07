## by Tschipcraft

scoreboard objectives add ts.sa.timer dummy
scoreboard objectives add ts.sa.count dummy
scoreboard objectives add tschipcraft.menu trigger
scoreboard objectives add ts.sa.welcome trigger
scoreboard objectives add ts.sa.how_to_use trigger

scoreboard objectives add ts.sa.x dummy
scoreboard objectives add ts.sa.y dummy
scoreboard objectives add ts.sa.z dummy

scoreboard objectives add ts.sa.settings dummy

# defaults
execute unless score ts.sa.distance ts.sa.settings matches 0..100 run scoreboard players set ts.sa.distance ts.sa.settings 20
execute unless score ts.sa.mode ts.sa.settings matches 0..1 run scoreboard players set ts.sa.mode ts.sa.settings 1

schedule clear spawnanimations:loop
schedule function spawnanimations:loop 2s

execute at @r run function spawnanimations:legacy/test
