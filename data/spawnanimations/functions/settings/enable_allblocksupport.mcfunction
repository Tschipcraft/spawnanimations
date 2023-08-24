##by Tschipcraft

tellraw @s ["",{"text":"-> Enabled "},{"text":"[Play animation on unsupported blocks]","color":"yellow"}]
scoreboard players set $play_unsupport ts.sa.settings 1
function #spawnanimations:settings
