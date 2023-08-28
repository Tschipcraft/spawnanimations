##by Tschipcraft
# Tries to resolve the incorrect data format for hidden entities

data modify storage spawnanimations:temp ArmorItems set from entity @s ArmorItems
data modify storage spawnanimations:temp HandItems set from entity @s HandItems

# Save new Armor Items
execute if data storage spawnanimations:temp ArmorItems[2].id run data modify entity @s ArmorItems[0].tag.BlockEntityTag.Items[2] set from storage spawnanimations:temp ArmorItems[2]
execute if data storage spawnanimations:temp ArmorItems[3].id run data modify entity @s ArmorItems[0].tag.BlockEntityTag.Items[3] set from storage spawnanimations:temp ArmorItems[3]

# Save new Hand Items
# Use offhand, if available
execute if data storage spawnanimations:temp HandItems[0].id if data entity @s ArmorItems[1].tag.BlockEntityTag.Items[0].id unless data entity @s ArmorItems[1].tag.BlockEntityTag.Items[1].id run data modify entity @s ArmorItems[1].tag.BlockEntityTag.Items[1] set from storage spawnanimations:temp HandItems[0]
data modify storage spawnanimations:temp HandItems[0] set value {}

execute if data storage spawnanimations:temp HandItems[0].id run data modify entity @s ArmorItems[1].tag.BlockEntityTag.Items[0] set from storage spawnanimations:temp HandItems[0]
execute if data storage spawnanimations:temp HandItems[1].id run data modify entity @s ArmorItems[1].tag.BlockEntityTag.Items[1] set from storage spawnanimations:temp HandItems[1]

# Remove temporary data
data merge entity @s {HandItems:[]}
data modify entity @s ArmorItems[2] set value {}
data modify entity @s ArmorItems[3] set value {}
