##by Tschipcraft
# Resets entities that got their scale changed

scale delay set pehkui:model_width 10 @s
scale delay set pehkui:model_height 10 @s
function spawnanimations:internal/entity/ehs/pehkui/set_easing

scale set pehkui:model_width 1 @s
scale set pehkui:model_height 1 @s

tag @s remove ts.sa.ehs.pehkui.shrunk
