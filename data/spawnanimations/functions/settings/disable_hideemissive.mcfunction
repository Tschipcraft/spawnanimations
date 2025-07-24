##by Tschipcraft

tellraw @s ["",{"text":"\n-> Disabled "},{"text":"[Hide Emissive Mob Layers]","color":"yellow"}]
scoreboard players set $hide_emissive ts.sa.settings 0
execute as @e[type=!#spawnanimations:exclude,tag=ts.sa.ehs.shrunk] run function spawnanimations:internal/entity/ehs/entity_specific/emissive_layer/unhide
execute as @e[type=!#spawnanimations:exclude,tag=ts.sa.ehs.pehkui.shrunk] run function spawnanimations:internal/entity/ehs/pehkui/unhide
function #spawnanimations:settings
