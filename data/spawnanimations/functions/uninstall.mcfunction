## by Tschipcraft

scoreboard objectives remove spa_a_timer
scoreboard objectives remove spa_a_count
scoreboard objectives remove spa_a_welcome
scoreboard objectives remove spa_a_how_to_use

scoreboard objectives remove x
scoreboard objectives remove y
scoreboard objectives remove z

scoreboard objectives remove spa_settings

scoreboard objectives remove menu

# Call the reset function
function spawnanimations:reset

# Cancel loop
schedule clear spawnanimations:loop

# Disable data pack
datapack disable "file/spawnanimations.zip"
datapack disable "file/spawnanimations"
datapack disable "file/spawnanimations-v1.9-mc1.19-datapack.zip"


say Spawn Animations by Tschipcraft has been uninstalled by @s! It is safe to disable and remove the data pack.
