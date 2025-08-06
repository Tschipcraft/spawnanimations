##by Tschipcraft

execute unless block ~ ~-0.5 ~ #spawnanimations:nonsolid run data merge entity @s {Fire:0s,FallDistance:0f}
execute if score @s ts.sa.e.nbt.Inv matches 0 run data merge entity @s {Invulnerable:0b}
scoreboard players reset @s ts.sa.e.nbt.Inv
execute if score @s ts.sa.e.nbt.Sil matches 0 run data merge entity @s {Silent:0b}
scoreboard players reset @s ts.sa.e.nbt.Sil

tag @s remove ts.sa.protected
