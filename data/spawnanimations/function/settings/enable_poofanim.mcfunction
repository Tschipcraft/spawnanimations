##by Tschipcraft

tellraw @s ["",{"text":"\n-> Enabled "},{"text":"[Enable Poof Animation]","color":"yellow"}]
scoreboard players set $enable_poof_anim ts.sa.settings 1
function #spawnanimations:settings
