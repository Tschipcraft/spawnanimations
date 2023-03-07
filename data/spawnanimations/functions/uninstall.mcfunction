## by Tschipcraft

scoreboard objectives remove ts.sa.timer
scoreboard objectives remove ts.sa.count
scoreboard objectives remove ts.sa.welcome
scoreboard objectives remove ts.sa.how_to_use

scoreboard objectives remove ts.sa.x
scoreboard objectives remove ts.sa.y
scoreboard objectives remove ts.sa.z

scoreboard objectives remove ts.sa.settings

scoreboard objectives remove tschipcraft.menu

# Call the reset function
function spawnanimations:reset

# Cancel loop
schedule clear spawnanimations:loop

# Disable data pack
datapack disable "file/spawnanimations.zip"
datapack disable "file/spawnanimations"
datapack disable "file/spawnanimations-v1.9-mc1.19-datapack.zip"


say Spawn Animations by Tschipcraft has been uninstalled by @s! It is safe to disable and remove the data pack.
