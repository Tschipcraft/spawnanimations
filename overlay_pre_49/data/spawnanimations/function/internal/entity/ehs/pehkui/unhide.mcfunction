##by Tschipcraft
# Resets entities that got their scale changed

scale delay set pehkui:model_width 10 @s
scale delay set pehkui:model_height 10 @s
scale easing set pehkui:model_width pehkui:quadratic_in_out @s
scale easing set pehkui:model_height pehkui:quadratic_in_out @s

scale set pehkui:model_width 1 @s
scale set pehkui:model_height 1 @s
execute as @s[tag=ts.sa.ehs.pehkui.hitbox] run function spawnanimations:internal/entity/ehs/pehkui/enderman/unhide

tag @s remove ts.sa.ehs.pehkui.shrunk
