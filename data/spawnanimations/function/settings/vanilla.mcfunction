##by Tschipcraft

tellraw @s ["",{"text":"\n-> Set activation mode to "},{"text":"[vanilla]","color":"yellow"}]
scoreboard players set $activation_mode ts.sa.settings 0
function #spawnanimations:settings
