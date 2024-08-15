##by Tschipcraft
# Tries to resolve the incorrect data format for hidden entities
# Called by evaluate.mcfunction

data modify storage spawnanimations:temp ArmorItems set from entity @s ArmorItems
data modify storage spawnanimations:temp HandItems set from entity @s HandItems

# Save new Armor Items
execute if data storage spawnanimations:temp ArmorItems[2].id run data modify entity @s ArmorItems[0].components.minecraft:container[2].item.components.minecraft:container[0].item set from storage spawnanimations:temp ArmorItems[2]
execute if data storage spawnanimations:temp ArmorItems[3].id run data modify entity @s ArmorItems[0].components.minecraft:container[3].item.components.minecraft:container[0].item set from storage spawnanimations:temp ArmorItems[3]

# Save new Hand Items
# Use offhand, if available
execute if data storage spawnanimations:temp HandItems[0].id if data entity @s ArmorItems[0].components.minecraft:container[4].item.components.minecraft:container[0].item.id unless data entity @s ArmorItems[0].components.minecraft:container[5].item.components.minecraft:container[0].item.id run data modify entity @s ArmorItems[0].components.minecraft:container[5].item.components.minecraft:container[0].item set from storage spawnanimations:temp HandItems[0]
# Uh, why do I clear it regardless if above code worked?? TODO
data modify storage spawnanimations:temp HandItems[0] set value {}

execute if data storage spawnanimations:temp HandItems[0].id run data modify entity @s ArmorItems[0].components.minecraft:container[4].item.components.minecraft:container[0].item set from storage spawnanimations:temp HandItems[0]
execute if data storage spawnanimations:temp HandItems[1].id run data modify entity @s ArmorItems[0].components.minecraft:container[5].item.components.minecraft:container[0].item set from storage spawnanimations:temp HandItems[1]

# Remove temporary data
data merge entity @s {HandItems:[]}
data modify entity @s ArmorItems[2] set value {}
data modify entity @s ArmorItems[3] set value {}
