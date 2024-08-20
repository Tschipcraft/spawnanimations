##by Tschipcraft
# Tries to resolve the incorrect data format for hidden entities
# Called by evaluate.mcfunction

# Copy to cache
data modify storage spawnanimations:temp ArmorItems set from entity @s ArmorItems
data modify storage spawnanimations:temp HandItems set from entity @s HandItems

# Build entity data
data modify storage spawnanimations:temp ArmorItemsBuild set value [{id:"minecraft:chest",count:1,components:{"minecraft:container":[{slot:0,item:{id:"minecraft:chest",count:1,components:{"minecraft:custom_data":{TsSaRemove:1b}}}},{slot:1,item:{id:"minecraft:chest",count:1,components:{"minecraft:custom_data":{TsSaRemove:1b}}}},{slot:2,item:{id:"minecraft:chest",count:1,components:{"minecraft:custom_data":{TsSaRemove:1b}}}},{slot:3,item:{id:"minecraft:chest",count:1,components:{"minecraft:custom_data":{TsSaRemove:1b}}}},{slot:4,item:{id:"minecraft:chest",count:1,components:{"minecraft:custom_data":{TsSaRemove:1b}}}},{slot:5,item:{id:"minecraft:chest",count:1,components:{"minecraft:custom_data":{TsSaRemove:1b}}}},{slot:6,item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_data":{TsSaveFormat:1,TsSaRemove:1b}}}}],"minecraft:custom_data":{TsSaRemove:1b}}},{},{},{}]
data modify storage spawnanimations:temp ArmorItemsBuild[0] merge from storage spawnanimations:temp ArmorItems[0]

# Save new Armor Items (legs, chest, head)
execute if data storage spawnanimations:temp ArmorItems[1].id run function spawnanimations:internal/entity/ehs/build_data_entry/armor_1
execute if data storage spawnanimations:temp ArmorItems[2].id run function spawnanimations:internal/entity/ehs/build_data_entry/armor_2
execute if data storage spawnanimations:temp ArmorItems[3].id run function spawnanimations:internal/entity/ehs/build_data_entry/armor_3

# Save new Hand Items
# Use offhand instead of overriding, if available
execute if data storage spawnanimations:temp HandItems[0].id if data storage spawnanimations:temp ArmorItems[0].components.minecraft:container[4].item.components.minecraft:container[0].item.id unless data storage spawnanimations:temp ArmorItems[0].components.minecraft:container[5].item.components.minecraft:container[0].item.id run function spawnanimations:internal/entity/ehs/conflict/use_offhand

execute if data storage spawnanimations:temp HandItems[0].id run function spawnanimations:internal/entity/ehs/build_data_entry/hand_0
execute if data storage spawnanimations:temp HandItems[1].id run function spawnanimations:internal/entity/ehs/build_data_entry/hand_1

# Remove temporary data
data modify entity @s ArmorItems set from storage spawnanimations:temp ArmorItemsBuild
data merge entity @s {HandItems:[{},{}]}
