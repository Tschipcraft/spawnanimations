## by Tschipcraft
# TODO: Add setting for experimental support.mcfunction

execute if block ~ ~ ~ #spawnanimations:supported run function spawnanimations:internal/animation/dig_up/sound/play_sound
execute unless block ~ ~ ~ #spawnanimations:supported run function spawnanimations:internal/animation/dig_up/sound/support

# Update stage + adjust animation speed
scoreboard players add @s ts.sa.e.stage 1
function spawnanimations:internal/animation/dig_up/get_animation_speed
