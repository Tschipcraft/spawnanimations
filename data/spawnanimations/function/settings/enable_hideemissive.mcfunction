##by Tschipcraft

tellraw @s ["",{"text":"\n-> Enabled "},{"text":"[Hide Emissive Mob Layers]","color":"yellow"}]
tellraw @s ["",{"text":"ℹ Info: ","color":"blue"},{"text":"This change only applies to new mobs"}]
scoreboard players set $hide_emissive ts.sa.settings 1
function #spawnanimations:settings
