##by Tschipcraft
# Sets the ts.sa.e.speed scoreboard value depending on speed and slowness effects of the current entity (@s)

scoreboard players set @s ts.sa.e.speed 0
execute if predicate spawnanimations:animation_speed/speed0 run scoreboard players add @s ts.sa.e.speed 1
execute if predicate spawnanimations:animation_speed/speed1 run scoreboard players add @s ts.sa.e.speed 2
execute if predicate spawnanimations:animation_speed/speed2 run scoreboard players add @s ts.sa.e.speed 3
execute if predicate spawnanimations:animation_speed/speed3 run scoreboard players add @s ts.sa.e.speed 4
execute if predicate spawnanimations:animation_speed/speed4 run scoreboard players add @s ts.sa.e.speed 5
execute if predicate spawnanimations:animation_speed/speed5 run scoreboard players add @s ts.sa.e.speed 6

execute if predicate spawnanimations:animation_speed/slowness0 run scoreboard players remove @s ts.sa.e.speed 1
execute if predicate spawnanimations:animation_speed/slowness1 run scoreboard players remove @s ts.sa.e.speed 2
execute if predicate spawnanimations:animation_speed/slowness2 run scoreboard players remove @s ts.sa.e.speed 3
execute if predicate spawnanimations:animation_speed/slowness3 run scoreboard players remove @s ts.sa.e.speed 4
