## by Tschipcraft

execute as @e[tag=ts.sa.to_verify] run data merge entity @s {Silent:0b}
tag @e[tag=ts.sa.to_verify] remove ts.sa.to_verify
execute as @e[tag=ts.sa.verify] run data merge entity @s {Silent:0b,Fire:0s}
execute as @e[tag=ts.sa.verify] at @s unless block ~ ~ ~ #spawnanimations:exclude run tp @s ~ ~2.3 ~
tag @e[tag=ts.sa.verify] remove ts.sa.verify
kill @e[tag=ts.sa.p]

schedule clear spawnanimations:loop
schedule function spawnanimations:loop 2s

say Successfully reseted Spawn Animations!
