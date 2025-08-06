##by Tschipcraft

tellraw @s ["",{"text":"\n-> Disabled "},{"text":"[Enable Poof Animation]","color":"yellow"}]
scoreboard players set $enable_poof_anim ts.sa.settings 0
function #spawnanimations:settings
