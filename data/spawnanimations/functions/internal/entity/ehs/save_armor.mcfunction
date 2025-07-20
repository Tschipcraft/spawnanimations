##by Tschipcraft
# This function saves the worn armor and tools into two chest items located in the feet and legs slot that don't get rendered. This data format is validated by the spawnanimations:validate predicate

tag @s add ts.sa.ehs.saved

# Copy to cache
data modify storage spawnanimations:temp ArmorItems set from entity @s ArmorItems
data modify storage spawnanimations:temp HandItems set from entity @s HandItems

# Encode slot information for later retrieval
data modify storage spawnanimations:temp ArmorItems[0] merge value {Slot:0b}
data modify storage spawnanimations:temp ArmorItems[1] merge value {Slot:1b}
data modify storage spawnanimations:temp ArmorItems[2] merge value {Slot:2b}
data modify storage spawnanimations:temp ArmorItems[3] merge value {Slot:3b}
data modify storage spawnanimations:temp HandItems[0] merge value {Slot:0b}
data modify storage spawnanimations:temp HandItems[1] merge value {Slot:1b}

# Copy to entity
data merge entity @s {ArmorItems:[{id:"minecraft:chest",Count:1b,tag:{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}],TsSaRemove:1b}},{id:"minecraft:chest",Count:1b,tag:{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}],TsSaRemove:1b}},{},{}],HandItems:[]}
data modify entity @s ArmorItems[0].tag.BlockEntityTag.Items set from storage spawnanimations:temp ArmorItems
data modify entity @s ArmorItems[1].tag.BlockEntityTag.Items set from storage spawnanimations:temp HandItems
