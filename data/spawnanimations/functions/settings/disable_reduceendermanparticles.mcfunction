##by Tschipcraft

tellraw @s ["",{"text":"\n-> Disabled "},{"text":"[Reduce Hidden Enderman Particles]","color":"yellow"}]
tellraw @s ["",{"text":"ℹ Info: ","color":"blue"},{"text":"This change only applies to new mobs"}]
scoreboard players set $enderman_hack ts.sa.settings 0
function #spawnanimations:settings
