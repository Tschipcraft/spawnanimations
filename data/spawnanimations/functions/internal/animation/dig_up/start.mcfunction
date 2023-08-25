## by Tschipcraft
# Starts the dig up animation - The entity has to have been prepared by the initalise.mcfunction

tag @s remove ts.sa.to_verify
tag @s add ts.sa.verify
tag @s add ts.sa.protected
scoreboard players set @s ts.sa.e.stage 0

# Set animation duration
scoreboard players set @s ts.sa.timer -300
function spawnanimations:internal/animation/dig_up/get_animation_speed

# Save position and current state of the Invulnerable NBT tag
execute store result score @s ts.sa.e.y run data get entity @s Pos[1] 100
execute store result score @s ts.sa.e.Inv run data get entity @s Invulnerable
execute if score @s ts.sa.e.Inv matches 0 run data merge entity @s {Invulnerable:1b}


# Prevent animation midair
execute if block ~ ~-0.5 ~ #spawnanimations:nonsolid run function spawnanimations:internal/animation/dig_up/verify_in_air
execute if entity @s[type=minecraft:giant] unless block ~ ~-1 ~ #spawnanimations:supported run function spawnanimations:internal/animation/dig_up/verify_in_air


# Prevent animation in mob crusher
execute if entity @e[type=!#spawnanimations:exclude,distance=0.001..1.1] run function spawnanimations:internal/animation/dig_up/verify_in_air

# Prevent animation on unsupported blocks if disabled
execute unless block ~ ~-1 ~ #spawnanimations:supported if score $play_unsupport ts.sa.settings matches -1..0 run function spawnanimations:internal/animation/dig_up/verify_in_air

# I don't remember why I put this here
#execute as @s[tag=ts.sa.to_verify] positioned ~ ~0.2 ~ align y unless block ~ ~ ~ #spawnanimations:exclude unless block ~ ~-1 ~ #spawnanimations:supported run function spawnanimations:internal/animation/dig_up/verify_in_air


# Set starting position
execute unless entity @s[type=minecraft:giant] if entity @s[tag=ts.sa.to_verify] run tp @s ~ ~-2.3 ~
execute if entity @s[type=minecraft:giant,tag=ts.sa.to_verify] run tp @s ~ ~-14 ~
