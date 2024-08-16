##by Tschipcraft
# This function saves the worn armor and tools into two chest items located in the feet and legs slot that don't get rendered. This data format is validated by the spawnanimations:validate predicate

tag @s add ts.sa.ehs.saved

data modify storage spawnanimations:temp ArmorItems set from entity @s ArmorItems
data modify storage spawnanimations:temp HandItems set from entity @s HandItems

data merge entity @s {ArmorItems:[{id:"minecraft:chest",Count:1b,tag:{TsSaRemove:1b}},{id:"minecraft:chest",Count:1b,tag:{TsSaRemove:1b}},{},{}],HandItems:[]}
data modify entity @s ArmorItems[0].tag.BlockEntityTag.Items set from storage spawnanimations:temp ArmorItems
data modify entity @s ArmorItems[1].tag.BlockEntityTag.Items set from storage spawnanimations:temp HandItems
