##by Tschipcraft

tellraw @s ["",{"text":"-> Disabled "},{"text":"[Hide armor and tools]","color":"yellow"}]
scoreboard players set $hide_armor ts.sa.settings 0
function #spawnanimations:settings
