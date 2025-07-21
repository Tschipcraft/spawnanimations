##by Tschipcraft

tellraw @s ["",{"text":"\n-> Set activation mode to "},{"text":"[vanilla]","color":"yellow"}]
scoreboard players set $activation_mode ts.sa.settings 0
execute if score $activation_dist ts.sa.settings matches ..24 run tellraw @s ["",{"text":"ℹ Info: ","color":"blue"},{"text":"It is recommended to set the activation distance to at least 25 blocks when using the vanilla activation mode to see the animation","hoverEvent":{"action":"show_text","contents":"Why? In vanilla, mobs do not spawn if a player is within a 24-block radius (spherical)"}}]
function #spawnanimations:settings
