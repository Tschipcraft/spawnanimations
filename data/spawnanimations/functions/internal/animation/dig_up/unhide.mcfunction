##by Tschipcraft

# Clear invisibility
effect clear @s minecraft:invisibility

# Give back Armor and Hand Items
execute if predicate spawnanimations:validate run function spawnanimations:internal/hidden/restore_armor

tag @s remove ts.sa.hidden
