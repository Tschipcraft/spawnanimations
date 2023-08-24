##by Tschipcraft

tellraw @s ["",{"text":"-> Disabled "},{"text":"[Play animation on unsupported blocks]","color":"yellow"}]
scoreboard players set $play_unsupport ts.sa.settings 0
function #spawnanimations:settings
