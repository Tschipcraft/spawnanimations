## by Tschipcraft

tag @s remove ts.sa.verify
tag @s remove ts.sa.to_verify
function spawnanimations:internal/entity/unhide
function spawnanimations:internal/entity/unprotect
particle minecraft:spit ~ ~1 ~ 0 0.3 0 0.2 15 normal
playsound minecraft:entity.llama.spit hostile @a ~ ~ ~ 1 0
function spawnanimations:internal/animation/dig_up/verify
