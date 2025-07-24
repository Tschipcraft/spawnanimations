##by Tschipcraft

tellraw @s ["",{"text":"\n-> Enabled "},{"text":"[Hide Worn Armor and Tools]","color":"yellow"}]
tellraw @s ["",{"text":"ℹ Info: ","color":"blue"},{"text":"This change only applies to new mobs"}]
scoreboard players set $hide_armor ts.sa.settings 1
function #spawnanimations:settings
