##by Tschipcraft
# Runs one tick after hide.mcfunction and finishes hiding an entity

tag @s remove ts.sa.to_hide
tag @s add ts.sa.to_verify
tag @s add ts.sa.hidden

# Save Armor and Hand Items
execute if score $hide_armor ts.sa.settings matches 1..2 as @s[type=#spawnanimations:can_wear_armor] run function spawnanimations:internal/entity/ehs/save_armor
