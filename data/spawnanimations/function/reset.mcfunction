## by Tschipcraft

# Finish initalise
execute as @e[tag=ts.sa.to_hide] run function spawnanimations:internal/entity/ehs/hide_exec
# Remove animation trigger
execute as @e[tag=ts.sa.to_verify] at @s run function spawnanimations:internal/animation/dig_up/verify_in_air
# Cancel animation
execute as @e[tag=ts.sa.verify] store result entity @s Pos[1] double 0.01 run scoreboard players get @s ts.sa.e.y
execute as @e[tag=ts.sa.verify] at @s run function spawnanimations:internal/animation/dig_up/verify_in_air

# Reset checked items
tag @e[type=minecraft:item,tag=ts.sa.i.checked] remove ts.sa.i.checked

# Reset advancements
scoreboard players reset @a tschipcraft.menu
scoreboard players enable @a tschipcraft.menu
advancement revoke @a only tschipcraft:menu

# Reschedule loop
schedule clear spawnanimations:loop
schedule function spawnanimations:loop 2s

say ⏏ Spawn Animations successfully reset!
