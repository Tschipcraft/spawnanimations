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

# Default settings
function spawnanimations:settings/defaults

# Entity properties
scoreboard objectives add ts.sa.e.y dummy
scoreboard objectives add ts.sa.e.speed dummy
scoreboard objectives add ts.sa.e.stage dummy
scoreboard objectives add ts.sa.e.height dummy
scoreboard objectives add ts.sa.e.nbt.Inv dummy
scoreboard objectives add ts.sa.e.nbt.Sil dummy
scoreboard objectives add ts.sa.e.nbt.CrCh dummy

# Initalise storage
data merge storage spawnanimations:temp {ArmorItems:[{},{},{},{}],HandItems:[{},{}]}

# Schedule loop
schedule clear spawnanimations:loop
schedule function spawnanimations:loop 1s

# Initalise mc version checker
function spawnanimations:internal/version_checker/start
