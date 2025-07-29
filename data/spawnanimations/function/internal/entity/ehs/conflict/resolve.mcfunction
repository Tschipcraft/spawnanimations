##by Tschipcraft
# Tries to resolve the incorrect data format for hidden entities
# Called by evaluate.mcfunction

# Copy to cache
data modify storage spawnanimations:temp equipment set value {}
data modify storage spawnanimations:temp equipment set from entity @s equipment

# Build entity data
data modify storage spawnanimations:temp equipment_build set value {body:{id:"minecraft:chest",count:1,components:{"minecraft:container":[{slot:0,item:{id:"minecraft:chest",count:1,components:{"minecraft:custom_data":{TsSaRemove:1b}}}},{slot:1,item:{id:"minecraft:chest",count:1,components:{"minecraft:custom_data":{TsSaRemove:1b}}}},{slot:2,item:{id:"minecraft:chest",count:1,components:{"minecraft:custom_data":{TsSaRemove:1b}}}},{slot:3,item:{id:"minecraft:chest",count:1,components:{"minecraft:custom_data":{TsSaRemove:1b}}}},{slot:4,item:{id:"minecraft:chest",count:1,components:{"minecraft:custom_data":{TsSaRemove:1b}}}},{slot:5,item:{id:"minecraft:chest",count:1,components:{"minecraft:custom_data":{TsSaRemove:1b}}}},{slot:6,item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_data":{TsSaveFormat:2,TsSaRemove:1b}}}}],"minecraft:custom_data":{TsSaRemove:1b}}}}
data modify storage spawnanimations:temp equipment_build.body merge from storage spawnanimations:temp equipment.body

# Save new Armor Items
execute if data storage spawnanimations:temp equipment.feet.id run function spawnanimations:internal/entity/ehs/build_data_entry/armor_0
execute if data storage spawnanimations:temp equipment.legs.id run function spawnanimations:internal/entity/ehs/build_data_entry/armor_1
execute if data storage spawnanimations:temp equipment.chest.id run function spawnanimations:internal/entity/ehs/build_data_entry/armor_2
execute if data storage spawnanimations:temp equipment.head.id run function spawnanimations:internal/entity/ehs/build_data_entry/armor_3

# Save new Hand Items
# Use offhand instead of overriding, if available
execute if data storage spawnanimations:temp equipment.mainhand.id if data storage spawnanimations:temp equipment.body.components.minecraft:container[4].item.components.minecraft:container[0].item.id unless data storage spawnanimations:temp equipment.body.components.minecraft:container[5].item.components.minecraft:container[0].item.id run function spawnanimations:internal/entity/ehs/conflict/use_offhand

execute if data storage spawnanimations:temp equipment.mainhand.id run function spawnanimations:internal/entity/ehs/build_data_entry/hand_0
execute if data storage spawnanimations:temp equipment.offhand.id run function spawnanimations:internal/entity/ehs/build_data_entry/hand_1

# Copy to entity
data modify entity @s equipment set from storage spawnanimations:temp equipment_build
