##by Tschipcraft

tellraw @s ["",{"text":"\n-> Disabled "},{"text":"[Hide Worn Armor and Tools]","color":"yellow"}]
tellraw @s ["",{"text":"ℹ Info: ","color":"blue"},{"text":"This change only applies to new mobs"}]
scoreboard players set $hide_armor ts.sa.settings 0
function #spawnanimations:settings
