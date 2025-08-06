##by Tschipcraft

tellraw @s ["",{"text":"\n-> Enabled "},{"text":"[Play Animation on Unsupported Blocks]","color":"yellow"}]
scoreboard players set $play_unsupport ts.sa.settings 1
function #spawnanimations:settings
