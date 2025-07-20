##by Tschipcraft
# This function saves the worn armor and tools into one chest item located in the feet slot that doesn't get rendered. This data format is validated by the spawnanimations:validate predicate

tag @s add ts.sa.ehs.saved

# Copy to cache
data modify storage spawnanimations:temp equipment set value {}
data modify storage spawnanimations:temp equipment set from entity @s equipment

# Build entity data
data modify storage spawnanimations:temp equipment_build set value {body:{id:"minecraft:chest",count:1,components:{"minecraft:container":[{slot:0,item:{id:"minecraft:chest",count:1,components:{"minecraft:custom_data":{TsSaRemove:1b}}}},{slot:1,item:{id:"minecraft:chest",count:1,components:{"minecraft:custom_data":{TsSaRemove:1b}}}},{slot:2,item:{id:"minecraft:chest",count:1,components:{"minecraft:custom_data":{TsSaRemove:1b}}}},{slot:3,item:{id:"minecraft:chest",count:1,components:{"minecraft:custom_data":{TsSaRemove:1b}}}},{slot:4,item:{id:"minecraft:chest",count:1,components:{"minecraft:custom_data":{TsSaRemove:1b}}}},{slot:5,item:{id:"minecraft:chest",count:1,components:{"minecraft:custom_data":{TsSaRemove:1b}}}},{slot:6,item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_data":{TsSaveFormat:2,TsSaRemove:1b}}}}],"minecraft:enchantments":{"minecraft:vanishing_curse":1},"minecraft:custom_data":{TsSaRemove:1b}}}}

# Copy Armor Items in correct order
execute if data storage spawnanimations:temp equipment.feet.id run function spawnanimations:internal/entity/ehs/build_data_entry/armor_0
execute if data storage spawnanimations:temp equipment.legs.id run function spawnanimations:internal/entity/ehs/build_data_entry/armor_1
execute if data storage spawnanimations:temp equipment.chest.id run function spawnanimations:internal/entity/ehs/build_data_entry/armor_2
execute if data storage spawnanimations:temp equipment.head.id run function spawnanimations:internal/entity/ehs/build_data_entry/armor_3

# Copy Hand Items in correct order
execute if data storage spawnanimations:temp equipment.mainhand.id run function spawnanimations:internal/entity/ehs/build_data_entry/hand_0
execute if data storage spawnanimations:temp equipment.offhand.id run function spawnanimations:internal/entity/ehs/build_data_entry/hand_1

# Copy to entity
data modify entity @s equipment set from storage spawnanimations:temp equipment_build
