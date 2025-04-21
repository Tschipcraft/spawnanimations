## by Tschipcraft

## Initalise scoreboards
scoreboard objectives add ts.sa.timer dummy
scoreboard objectives add ts.sa.count dummy
scoreboard objectives add ts.sa.welcome trigger

scoreboard objectives add ts.sa.x dummy
scoreboard objectives add ts.sa.y dummy
scoreboard objectives add ts.sa.z dummy

# Entity properties
scoreboard objectives add ts.sa.e.y dummy
scoreboard objectives add ts.sa.e.speed dummy
scoreboard objectives add ts.sa.e.stage dummy
scoreboard objectives add ts.sa.e.height dummy
scoreboard objectives add ts.sa.e.nbt.Inv dummy
scoreboard objectives add ts.sa.e.nbt.Sil dummy
scoreboard objectives add ts.sa.e.nbt.CrCh dummy

# Settings
scoreboard objectives add ts.sa.settings dummy
scoreboard objectives add ts.sa.distance dummy

function spawnanimations:settings/defaults

# Menu/Other
scoreboard objectives add tschipcraft.menu trigger
scoreboard players enable @a tschipcraft.menu

scoreboard objectives add tvc_ignore dummy

## Initalise storage
data merge storage spawnanimations:temp {ArmorItems:[{},{},{},{}],HandItems:[{},{}]}

## Reset advancements
advancement revoke @a only tschipcraft:menu

## Schedule loop and execute version checker
schedule clear spawnanimations:loop
schedule function spawnanimations:loop 1s

function spawnanimations:internal/version_checker/start
