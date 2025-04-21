##by Tschipcraft
# Build armor data entry from weapon.mainhand slot item

data modify storage spawnanimations:temp equipment_build.body.components.minecraft:container[4].item merge value {components:{"minecraft:container":[{slot:0,item:{}}]}}
data modify storage spawnanimations:temp equipment_build.body.components.minecraft:container[4].item.components.minecraft:container[0].item set from storage spawnanimations:temp equipment.mainhand
