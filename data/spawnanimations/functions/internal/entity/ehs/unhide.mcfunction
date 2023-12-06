##by Tschipcraft
# Unhides an entity

# Clear invisibility
effect clear @s minecraft:invisibility

# Give back Armor and Hand Items
execute as @s[tag=ts.sa.ehs.saved] run function spawnanimations:internal/entity/ehs/restore_armor

# Entity specific
execute if entity @s[type=minecraft:creeper] run function spawnanimations:internal/entity/ehs/entity_specific/creeper/unhide

tag @s remove ts.sa.hidden
