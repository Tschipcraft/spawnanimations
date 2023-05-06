##by Tschipcraft

tellraw @s ["",{"text":"-> Enabled "},{"text":"[Hide armor and tools]","color":"yellow"}]
scoreboard players set ts.sa.hide ts.sa.settings 1
function #spawnanimations:settings
