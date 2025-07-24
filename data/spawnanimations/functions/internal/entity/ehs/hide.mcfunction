## by Tschipcraft
# EHS stands for Entity Hiding System
# Hides an entity
# Assumes hide_exec will run one tick after this

execute store result score @s ts.sa.e.nbt.Sil run data get entity @s Silent
execute if score @s ts.sa.e.nbt.Sil matches 0 run data merge entity @s {Silent:1b}
tag @s add ts.sa.to_hide
effect give @s invisibility 10 0 true

# Pehkui integration
execute if score $hide_emissive ts.sa.settings matches 1..2 run function spawnanimations:internal/entity/ehs/pehkui/hide
