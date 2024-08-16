##by Tschipcraft
# Saves a new HandItem to the offhand slot if available

# Copy data
data modify storage spawnanimations:temp ArmorItemsBuild set value {id:"minecraft:chest",count:1,components:{"minecraft:container":[{slot:0,item:{}}],"minecraft:custom_data":{TsSaRemove:1b}}}
data modify storage spawnanimations:temp ArmorItemsBuild.components.minecraft:container[0].item set from storage spawnanimations:temp HandItems[0]
data modify entity @s ArmorItems[0].components.minecraft:container[5].item set from storage spawnanimations:temp ArmorItemsBuild
# Clear mainhand slot
data modify storage spawnanimations:temp HandItems[0] set value {}
