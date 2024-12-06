##by Tschipcraft
# This function restores the worn armor and tools from two chest items located in the feet and legs slot that don't get rendered. This data format is validated by the spawnanimations:validate predicate

tag @s remove ts.sa.ehs.saved

# Copy to cache
data modify storage spawnanimations:temp ArmorItems set from entity @s ArmorItems[0].tag.BlockEntityTag.Items

# Restore data
data modify entity @s HandItems set from entity @s ArmorItems[1].tag.BlockEntityTag.Items
data modify entity @s ArmorItems set from storage spawnanimations:temp ArmorItems
