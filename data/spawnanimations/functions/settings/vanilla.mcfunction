##by Tschipcraft

tellraw @s ["",{"text":"-> Set activation mode to "},{"text":"[vanilla]","color":"yellow"}]
scoreboard players set ts.sa.mode ts.sa.settings 0
function #spawnanimations:settings
