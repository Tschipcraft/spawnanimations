##by Tschipcraft

tellraw @s ["",{"text":"\n-> Enabled "},{"text":"[Play Animation Sounds]","color":"yellow"}]
scoreboard players set $play_sounds ts.sa.settings 1
function #spawnanimations:settings
