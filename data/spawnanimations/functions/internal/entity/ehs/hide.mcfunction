## by Tschipcraft
# EHS stands for Entity Hiding System
# Hides an entity

data merge entity @s {Silent:1b}
tag @s add ts.sa.to_hide
effect give @s invisibility 10 0 true
