##by Tschipcraft
# This function saves the worn armor and tools into one chest item located in the feet slot that doesn't get rendered. This data format is validated by the spawnanimations:validate predicate

tag @s add ts.sa.ehs.saved

# Copy to cache
data modify storage spawnanimations:temp ArmorItems set from entity @s ArmorItems
data modify storage spawnanimations:temp HandItems set from entity @s HandItems

# Build entity data
data modify storage spawnanimations:temp ArmorItemsBuild set value [{id:"minecraft:chest",count:1,components:{"minecraft:container":[{slot:0,item:{id:"minecraft:chest",count:1,components:{"minecraft:custom_data":{TsSaRemove:1b}}}},{slot:1,item:{id:"minecraft:chest",count:1,components:{"minecraft:custom_data":{TsSaRemove:1b}}}},{slot:2,item:{id:"minecraft:chest",count:1,components:{"minecraft:custom_data":{TsSaRemove:1b}}}},{slot:3,item:{id:"minecraft:chest",count:1,components:{"minecraft:custom_data":{TsSaRemove:1b}}}},{slot:4,item:{id:"minecraft:chest",count:1,components:{"minecraft:custom_data":{TsSaRemove:1b}}}},{slot:5,item:{id:"minecraft:chest",count:1,components:{"minecraft:custom_data":{TsSaRemove:1b}}}},{slot:6,item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_data":{TsSaveFormat:1,TsSaRemove:1b}}}}],"minecraft:custom_data":{TsSaRemove:1b}}},{},{},{}]

# Copy Armor Items in correct order
execute if data storage spawnanimations:temp ArmorItems[0].id run function spawnanimations:internal/entity/ehs/build_data_entry/armor_0
execute if data storage spawnanimations:temp ArmorItems[1].id run function spawnanimations:internal/entity/ehs/build_data_entry/armor_1
execute if data storage spawnanimations:temp ArmorItems[2].id run function spawnanimations:internal/entity/ehs/build_data_entry/armor_2
execute if data storage spawnanimations:temp ArmorItems[3].id run function spawnanimations:internal/entity/ehs/build_data_entry/armor_3

# Copy Hand Items in correct order
execute if data storage spawnanimations:temp HandItems[0].id run function spawnanimations:internal/entity/ehs/build_data_entry/hand_0
execute if data storage spawnanimations:temp HandItems[1].id run function spawnanimations:internal/entity/ehs/build_data_entry/hand_1

# Copy to entity
data modify entity @s ArmorItems set from storage spawnanimations:temp ArmorItemsBuild
data merge entity @s {HandItems:[{},{}]}
