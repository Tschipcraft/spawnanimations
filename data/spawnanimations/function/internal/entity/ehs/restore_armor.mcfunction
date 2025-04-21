##by Tschipcraft
# This function restores the worn armor and tools from one chest item located in the feet slot that doesn't get rendered. This data format is validated by the spawnanimations:validate predicate

tag @s remove ts.sa.ehs.saved

# Copy to cache
data modify storage spawnanimations:temp equipment set from entity @s equipment.body.components.minecraft:container

# Build entity data
data modify storage spawnanimations:temp equipment_retrieve set value {}

# Copy Armor Items in correct order
data modify storage spawnanimations:temp equipment_retrieve.feet set from storage spawnanimations:temp equipment[0].item.components.minecraft:container[0].item
data modify storage spawnanimations:temp equipment_retrieve.legs set from storage spawnanimations:temp equipment[1].item.components.minecraft:container[0].item
data modify storage spawnanimations:temp equipment_retrieve.chest set from storage spawnanimations:temp equipment[2].item.components.minecraft:container[0].item
data modify storage spawnanimations:temp equipment_retrieve.head set from storage spawnanimations:temp equipment[3].item.components.minecraft:container[0].item

# Copy Hand Items in correct order
data modify storage spawnanimations:temp equipment_retrieve.mainhand set from storage spawnanimations:temp equipment[4].item.components.minecraft:container[0].item
data modify storage spawnanimations:temp equipment_retrieve.offhand set from storage spawnanimations:temp equipment[5].item.components.minecraft:container[0].item

# Restore data
data modify entity @s equipment set from storage spawnanimations:temp equipment_retrieve
