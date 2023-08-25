## by Tschipcraft

execute if block ~ ~ ~ #spawnanimations:supported run function spawnanimations:internal/animation/dig_up/sound/play_sound2
execute unless block ~ ~ ~ #spawnanimations:supported run function spawnanimations:internal/animation/dig_up/sound/support

scoreboard players reset @s ts.sa.e.stage
scoreboard players reset @s ts.sa.e.speed
