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
scoreboard objectives remove ts.sa.prev_x
scoreboard objectives remove ts.sa.prev_y
scoreboard objectives remove ts.sa.prev_z

scoreboard objectives remove ts.sa.settings
scoreboard objectives remove ts.sa.distance

scoreboard objectives remove tschipcraft.menu
execute unless score $global tvc_ignore matches 1 run scoreboard objectives remove tvc_ignore

scoreboard objectives remove ts.sa.e.y
scoreboard objectives remove ts.sa.e.speed
scoreboard objectives remove ts.sa.e.stage
scoreboard objectives remove ts.sa.e.height
scoreboard objectives remove ts.sa.e.nbt.Inv
scoreboard objectives remove ts.sa.e.nbt.Sil
scoreboard objectives remove ts.sa.e.nbt.CrCh

# Remove storage
data remove storage spawnanimations:temp HandItems
data remove storage spawnanimations:temp ArmorItems

# Disable data pack
datapack disable "file/spawnanimations.zip"
datapack disable "file/spawnanimations"
datapack disable "mod:spawnanimations"
datapack disable "mod/spawnanimations"
datapack disable "file/${file_name}"

say ⏻ Spawn Animations v${version} by Tschipcraft has been uninstalled by @s! It is safe to disable and remove the data pack/mod.
