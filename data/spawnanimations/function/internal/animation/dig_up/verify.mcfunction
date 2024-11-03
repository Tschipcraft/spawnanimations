## by Tschipcraft

tag @s add ts.sa.verified
tag @s remove ts.sa.verify

# Reset entity info
scoreboard players reset @s ts.sa.e.y
scoreboard players reset @s ts.sa.e.stage
scoreboard players reset @s ts.sa.e.speed
scoreboard players reset @s ts.sa.e.height
# Finish dig up animation if it started
execute if score @s ts.sa.timer matches -250.. run tp @s ~ ~0.05 ~
execute if score @s ts.sa.timer matches -250.. positioned ~ ~0.5 ~ run function spawnanimations:internal/animation/dig_up/particles/particles
execute as @s[tag=ts.sa.protected] at @s run function spawnanimations:internal/entity/unprotect
