##by Tschipcraft

tellraw @s ["",{"text":"-> Set activation mode to "},{"text":"[classic]","color":"yellow"}]
scoreboard players set ts.sa.mode ts.sa.settings 1
function #spawnanimations:settings
