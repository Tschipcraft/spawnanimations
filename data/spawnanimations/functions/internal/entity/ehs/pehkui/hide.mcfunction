##by Tschipcraft
# Shrinks entities to a smaller scale to completely hide them

scale delay set pehkui:model_width 0 @s
scale delay set pehkui:model_height 0 @s

scale set pehkui:model_width 0.0001 @s
scale set pehkui:model_height 0.0001 @s
execute if score $enderman_hack ts.sa.settings matches 1..2 as @s[type=minecraft:enderman] run function spawnanimations:internal/entity/ehs/pehkui/enderman/hide

tag @s add ts.sa.ehs.pehkui.shrunk
