## by Tschipcraft

scoreboard objectives add ts.sa.timer dummy
scoreboard objectives add ts.sa.count dummy
scoreboard objectives add tschipcraft.menu trigger
scoreboard objectives add ts.sa.welcome trigger

scoreboard objectives add ts.sa.x dummy
scoreboard objectives add ts.sa.y dummy
scoreboard objectives add ts.sa.z dummy

scoreboard objectives add ts.sa.settings dummy
scoreboard objectives add ts.sa.distance dummy

# Defaults
execute unless score $activation_dist ts.sa.settings matches 1..100 run scoreboard players set $activation_dist ts.sa.settings 20
execute unless score #lock_distance ts.sa.settings matches 0..1 run scoreboard players set #lock_distance ts.sa.settings 0
execute unless score $activation_mode ts.sa.settings matches -1..2 run scoreboard players set $activation_mode ts.sa.settings 1
execute unless score $hide_armor ts.sa.settings matches -1..2 run scoreboard players set $hide_armor ts.sa.settings 1
execute unless score $play_unsupport ts.sa.settings matches -1..2 run scoreboard players set $play_unsupport ts.sa.settings 1

# Entity properties
scoreboard objectives add ts.sa.e.y dummy
scoreboard objectives add ts.sa.e.speed dummy
scoreboard objectives add ts.sa.e.Inv dummy
scoreboard objectives add ts.sa.e.stage dummy

# Initalise storage
data merge storage spawnanimations:temp {ArmorItems:[{},{},{},{}],HandItems:[{},{}]}

# Schedule loop
schedule clear spawnanimations:loop
schedule function spawnanimations:loop 1s

# Initalise mc version checker
function spawnanimations:internal/version_checker/start
