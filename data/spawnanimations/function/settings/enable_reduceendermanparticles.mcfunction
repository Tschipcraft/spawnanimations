##by Tschipcraft

tellraw @s ["",{"text":"\n-> Enabled "},{"text":"[Reduce Hidden Enderman Particles]","color":"yellow"}]
tellraw @s ["",{"text":"ℹ Info: ","color":"blue"},{"text":"This change only applies to new mobs"}]
scoreboard players set $enderman_hack ts.sa.settings 1
function #spawnanimations:settings
