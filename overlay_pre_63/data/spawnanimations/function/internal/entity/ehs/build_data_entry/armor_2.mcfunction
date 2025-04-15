##by Tschipcraft
# Build armor data entry from armor.chest slot item

data modify storage spawnanimations:temp ArmorItemsBuild[0].components.minecraft:container[2].item merge value {components:{"minecraft:container":[{slot:0,item:{}}]}}
data modify storage spawnanimations:temp ArmorItemsBuild[0].components.minecraft:container[2].item.components.minecraft:container[0].item set from storage spawnanimations:temp ArmorItems[2]
