##by Tschipcraft

tellraw @s ["",{"text":"-> Enabled "},{"text":"[Play animation on unsupported blocks]","color":"yellow"}]
scoreboard players set ts.sa.support ts.sa.settings 1
function #spawnanimations:settings
