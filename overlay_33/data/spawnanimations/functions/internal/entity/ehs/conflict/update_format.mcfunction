##by Tschipcraft
# Update the data format of hidden entities from pre-1.20.5 versions

# Copy to cache
data modify storage spawnanimations:temp ArmorItems set from entity @s ArmorItems
data merge entity @s {ArmorItems:[{},{},{},{}]}

# Restore Hand Items
data modify entity @s HandItems[0] set from storage spawnanimations:temp ArmorItems[1].components.minecraft:block_entity_data.Items[0]
data modify entity @s HandItems[1] set from storage spawnanimations:temp ArmorItems[1].components.minecraft:block_entity_data.Items[1]
data modify entity @s HandItems[0] set from storage spawnanimations:temp ArmorItems[1].components.minecraft:container[0].item
data modify entity @s HandItems[1] set from storage spawnanimations:temp ArmorItems[1].components.minecraft:container[1].item

# Restore Armor Items in correct order
# Validating items is not supported until 24w12a (missing execute if items command), so just blindly copy
data modify entity @s ArmorItems[0] set from storage spawnanimations:temp ArmorItems[0].components.minecraft:block_entity_data.Items[0]
data modify entity @s ArmorItems[1] set from storage spawnanimations:temp ArmorItems[0].components.minecraft:block_entity_data.Items[1]
data modify entity @s ArmorItems[2] set from storage spawnanimations:temp ArmorItems[0].components.minecraft:block_entity_data.Items[2]
data modify entity @s ArmorItems[3] set from storage spawnanimations:temp ArmorItems[0].components.minecraft:block_entity_data.Items[3]
data modify entity @s ArmorItems[0] set from storage spawnanimations:temp ArmorItems[0].components.minecraft:container[0].item
data modify entity @s ArmorItems[1] set from storage spawnanimations:temp ArmorItems[0].components.minecraft:container[1].item
data modify entity @s ArmorItems[2] set from storage spawnanimations:temp ArmorItems[0].components.minecraft:container[2].item
data modify entity @s ArmorItems[3] set from storage spawnanimations:temp ArmorItems[0].components.minecraft:container[3].item


# Set tags and schedule resaving in new format
tag @s remove ts.sa.ehs.saved
function spawnanimations:internal/entity/hide
