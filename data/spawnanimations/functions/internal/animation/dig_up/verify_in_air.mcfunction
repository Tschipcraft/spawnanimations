## by Tschipcraft
# The "Poof" animation

tag @s remove ts.sa.verify
tag @s remove ts.sa.to_verify
function spawnanimations:internal/entity/unhide
function spawnanimations:internal/entity/unprotect
execute if score $enable_poof_anim ts.sa.settings matches 1..2 run particle minecraft:spit ~ ~1 ~ 0 0.3 0 0.2 10 normal
execute if score $enable_poof_anim ts.sa.settings matches 1..2 if score $play_sounds ts.sa.settings matches 1..2 run playsound minecraft:entity.llama.spit hostile @a ~ ~ ~ 0.75 0
function spawnanimations:internal/animation/dig_up/verify
