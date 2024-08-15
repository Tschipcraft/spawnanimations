##by Tschipcraft
# This function saves the worn armor and tools into two chest items located in the feet and leggins slot that don't get rendered. This data format is validated by the spawnanimations:validate predicate

tag @s add ts.sa.ehs.saved

data modify storage spawnanimations:temp ArmorItems set from entity @s ArmorItems
data modify storage spawnanimations:temp HandItems set from entity @s HandItems

#data merge entity @s {HandItems:[{},{}],ArmorItems:[{id:"minecraft:chest",count:1,components:{"minecraft:container":[{slot:0},{slot:1},{slot:2},{slot:3}],"minecraft:custom_data":{TsSaRemove:1}}},{id:"minecraft:chest",count:1,components:{"minecraft:custom_data":{TsSaRemove:1}}},{},{}]}

# Build entity data
data modify storage spawnanimations:temp ArmorItemsBuild set value [{id:"minecraft:chest",count:1,components:{"minecraft:container":[{slot:0,item:{id:"minecraft:chest",count:1,components:{"minecraft:container":[{slot:0,item:{}}],"minecraft:custom_data":{TsSaRemove:1b}}}},{slot:1,item:{id:"minecraft:chest",count:1,components:{"minecraft:container":[{slot:0,item:{}}],"minecraft:custom_data":{TsSaRemove:1b}}}},{slot:2,item:{id:"minecraft:chest",count:1,components:{"minecraft:container":[{slot:0,item:{}}],"minecraft:custom_data":{TsSaRemove:1b}}}},{slot:3,item:{id:"minecraft:chest",count:1,components:{"minecraft:container":[{slot:0,item:{}}],"minecraft:custom_data":{TsSaRemove:1b}}}},{slot:4,item:{id:"minecraft:chest",count:1,components:{"minecraft:container":[{slot:0,item:{}}],"minecraft:custom_data":{TsSaRemove:1b}}}},{slot:5,item:{id:"minecraft:chest",count:1,components:{"minecraft:container":[{slot:0,item:{}}],"minecraft:custom_data":{TsSaRemove:1b}}}},{slot:6,item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_data":{TsSaveFormat:1,TsSaRemove:1b}}}}],"minecraft:custom_data":{TsSaRemove:1b}}},{},{},{}]

# Copy Armor Items in correct order
data modify storage spawnanimations:temp ArmorItemsBuild[0].components.minecraft:container[0].item.components.minecraft:container[0].item set from storage spawnanimations:temp ArmorItems[0]
data modify storage spawnanimations:temp ArmorItemsBuild[0].components.minecraft:container[1].item.components.minecraft:container[0].item set from storage spawnanimations:temp ArmorItems[1]
data modify storage spawnanimations:temp ArmorItemsBuild[0].components.minecraft:container[2].item.components.minecraft:container[0].item set from storage spawnanimations:temp ArmorItems[2]
data modify storage spawnanimations:temp ArmorItemsBuild[0].components.minecraft:container[3].item.components.minecraft:container[0].item set from storage spawnanimations:temp ArmorItems[3]

# Copy Hand Items in correct order
data modify storage spawnanimations:temp ArmorItemsBuild[0].components.minecraft:container[4].item.components.minecraft:container[0].item set from storage spawnanimations:temp HandItems[0]
data modify storage spawnanimations:temp ArmorItemsBuild[0].components.minecraft:container[5].item.components.minecraft:container[0].item set from storage spawnanimations:temp HandItems[1]


data modify entity @s ArmorItems set from storage spawnanimations:temp ArmorItemsBuild
data merge entity @s {HandItems:[{},{}]}
