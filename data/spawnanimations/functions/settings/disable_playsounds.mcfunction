##by Tschipcraft

tellraw @s ["",{"text":"\n-> Disabled "},{"text":"[Play Animation Sounds]","color":"yellow"}]
scoreboard players set $play_sounds ts.sa.settings 0
function #spawnanimations:settings
