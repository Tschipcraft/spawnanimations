##by Tschipcraft

tellraw @s ["",{"text":"-> Set activation mode to "},{"text":"[classic]","color":"yellow"}]
scoreboard players set $activation_mode ts.sa.settings 1
function #spawnanimations:settings
