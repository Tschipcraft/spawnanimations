##by Tschipcraft
# Saves a new HandItem to the offhand slot if available

# Copy data
data modify storage spawnanimations:temp ArmorItemsBuild[0].components.minecraft:container[5].item merge value {components:{"minecraft:container":[{slot:0,item:{}}]}}
data modify storage spawnanimations:temp ArmorItemsBuild[0].components.minecraft:container[5].item.components.minecraft:container[0].item set from storage spawnanimations:temp HandItems[0]
# Clear mainhand slot
data modify storage spawnanimations:temp HandItems[0] set value {}
