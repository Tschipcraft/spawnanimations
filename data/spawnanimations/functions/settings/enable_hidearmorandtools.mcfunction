##by Tschipcraft

tellraw @s ["",{"text":"\n-> Enabled "},{"text":"[Hide armor and tools]","color":"yellow"}]
scoreboard players set $hide_armor ts.sa.settings 1
function #spawnanimations:settings
