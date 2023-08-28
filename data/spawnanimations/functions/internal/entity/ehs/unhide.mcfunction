##by Tschipcraft
# Unhides an entity

# Clear invisibility
effect clear @s minecraft:invisibility

# Give back Armor and Hand Items
execute as @s[tag=ts.sa.ehs.saved] run function spawnanimations:internal/entity/ehs/restore_armor

tag @s remove ts.sa.hidden
