## by Tschipcraft

# Call the reset function
function spawnanimations:reset

# Cancel loop
schedule clear spawnanimations:loop

# Reset already verified mobs
tag @e[tag=ts.sa.verified] remove ts.sa.verified

# Remove objectives
scoreboard objectives remove ts.sa.timer
scoreboard objectives remove ts.sa.count
scoreboard objectives remove ts.sa.welcome

scoreboard objectives remove ts.sa.x
scoreboard objectives remove ts.sa.y
scoreboard objectives remove ts.sa.z

scoreboard objectives remove ts.sa.settings

scoreboard objectives remove tschipcraft.menu

scoreboard objectives remove ts.sa.e.y
scoreboard objectives remove ts.sa.e.speed
scoreboard objectives remove ts.sa.e.Inv
scoreboard objectives remove ts.sa.e.stage

# Remove storage
data remove storage spawnanimations:temp HandItems
data remove storage spawnanimations:temp ArmorItems


# Disable data pack
datapack disable "file/spawnanimations.zip"
datapack disable "file/spawnanimations"
datapack disable "file/spawnanimations-v1.9-mc1.19.4-datapack.zip"


say Spawn Animations by Tschipcraft has been uninstalled by @s! It is safe to disable and remove the data pack.
