##by Tschipcraft

data merge entity @s {Silent:0b,Fire:0s}
execute if score @s ts.sa.e.Inv matches 0 run data merge entity @s {Invulnerable:0b}
scoreboard players reset @s ts.sa.e.Inv

tag @s remove ts.sa.protected
