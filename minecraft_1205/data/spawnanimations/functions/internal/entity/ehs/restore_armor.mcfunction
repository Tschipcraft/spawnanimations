##by Tschipcraft
# This function restores the worn armor and tools from one chest items located in the feet slot that don't get rendered. This data format is validated by the spawnanimations:validate predicate

tag @s remove ts.sa.ehs.saved

# Copy to cache
data modify storage spawnanimations:temp ArmorItems set from entity @s ArmorItems[0].components.minecraft:container

# Build entity data
data modify storage spawnanimations:temp ArmorItemsRetrieve set value [{},{},{},{}]
data modify storage spawnanimations:temp HandItemsRetrieve set value [{},{}]

# Copy Armor Items in correct order
data modify storage spawnanimations:temp ArmorItemsRetrieve[0] set from storage spawnanimations:temp ArmorItems[0].item.components.minecraft:container[0].item
data modify storage spawnanimations:temp ArmorItemsRetrieve[1] set from storage spawnanimations:temp ArmorItems[1].item.components.minecraft:container[0].item
data modify storage spawnanimations:temp ArmorItemsRetrieve[2] set from storage spawnanimations:temp ArmorItems[2].item.components.minecraft:container[0].item
data modify storage spawnanimations:temp ArmorItemsRetrieve[3] set from storage spawnanimations:temp ArmorItems[3].item.components.minecraft:container[0].item

# Copy Hand Items in correct order
data modify storage spawnanimations:temp HandItemsRetrieve[0] set from storage spawnanimations:temp ArmorItems[4].item.components.minecraft:container[0].item
data modify storage spawnanimations:temp HandItemsRetrieve[1] set from storage spawnanimations:temp ArmorItems[5].item.components.minecraft:container[0].item

# Restore data
data modify entity @s ArmorItems set from storage spawnanimations:temp ArmorItemsRetrieve
data modify entity @s HandItems set from storage spawnanimations:temp HandItemsRetrieve
