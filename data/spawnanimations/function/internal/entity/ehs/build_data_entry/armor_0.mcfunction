##by Tschipcraft
# Build armor data entry from armor.feet slot item

data modify storage spawnanimations:temp equipment_build.body.components.minecraft:container[0].item merge value {components:{"minecraft:container":[{slot:0,item:{}}]}}
data modify storage spawnanimations:temp equipment_build.body.components.minecraft:container[0].item.components.minecraft:container[0].item set from storage spawnanimations:temp equipment.feet
