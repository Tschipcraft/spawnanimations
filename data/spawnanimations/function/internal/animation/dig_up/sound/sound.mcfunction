## by Tschipcraft

execute if score $play_sounds ts.sa.settings matches 1..2 if block ~ ~ ~ #spawnanimations:supported run function spawnanimations:internal/animation/dig_up/sound/play_sound
execute if score $play_sounds ts.sa.settings matches 1..2 if score $play_unsupport ts.sa.settings matches 1..2 unless block ~ ~ ~ #spawnanimations:supported unless block ~ ~ ~ #spawnanimations:nonsolid unless block ~ ~ ~ minecraft:bedrock unless block ~ ~ ~ minecraft:air run function spawnanimations:internal/animation/dig_up/sound/support

# Update stage + adjust animation speed
scoreboard players add @s ts.sa.e.stage 1
function spawnanimations:internal/entity/get_animation_speed
