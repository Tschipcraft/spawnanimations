##by Tschipcraft

tellraw @s ["",{"text":"\n-> Set Activation Mode to "},{"text":"[Classic]","color":"yellow"}]
scoreboard players set $activation_mode ts.sa.settings 1
function #spawnanimations:settings
