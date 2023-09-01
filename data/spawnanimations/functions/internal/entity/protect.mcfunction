##by Tschipcraft
# Protects an entity for the dig up animation

tag @s add ts.sa.protected

# Save current state of the Invulnerable NBT tag
execute store result score @s ts.sa.e.nbt.Inv run data get entity @s Invulnerable
execute if score @s ts.sa.e.nbt.Inv matches 0 run data merge entity @s {Invulnerable:1b}
