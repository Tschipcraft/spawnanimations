##by Tschipcraft
# Runs one tick after initalise.mcfunction and finishes hiding a entity

tag @s remove ts.sa.initalise
tag @s add ts.sa.to_verify
tag @s add ts.sa.hidden

# Save Armor and Hand Items
execute if score ts.sa.hide ts.sa.settings matches 1 as @s[type=#spawnanimations:can_wear_armor] run function spawnanimations:internal/hidden/save_armor
