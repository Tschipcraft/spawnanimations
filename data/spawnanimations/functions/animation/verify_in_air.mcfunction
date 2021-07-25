## by Tschipcraft

tag @s remove spa_a_verify
particle minecraft:poof ~ ~1 ~ 0 0.3 0 0.2 15 normal
effect clear @s invisibility
data merge entity @s {Silent:0b}
playsound minecraft:entity.llama.spit neutral @a ~ ~ ~ 1 0
function spawnanimations:general/verified
