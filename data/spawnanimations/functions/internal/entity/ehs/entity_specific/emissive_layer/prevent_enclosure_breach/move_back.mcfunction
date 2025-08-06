##by Tschipcraft

# Move back to previous position
execute store result entity @s Pos[0] double 0.1 run scoreboard players get @s ts.sa.prev_x
execute store result entity @s Pos[1] double 0.1 run scoreboard players get @s ts.sa.prev_y
execute store result entity @s Pos[2] double 0.1 run scoreboard players get @s ts.sa.prev_z
