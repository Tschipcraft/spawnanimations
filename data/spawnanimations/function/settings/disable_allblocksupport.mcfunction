##by Tschipcraft

tellraw @s ["",{"text":"\n-> Disabled "},{"text":"[Play Animation on Unsupported Blocks]","color":"yellow"}]
scoreboard players set $play_unsupport ts.sa.settings 0
function #spawnanimations:settings
