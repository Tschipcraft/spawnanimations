##by Tschipcraft
# This function saves the worn armor and tools into two chest items located in the feet and leggins slot that don't get rendered. This data format is validated by the spawnanimations:validate predicate

tag @s add ts.sa.ehs.saved

data modify storage spawnanimations:temp ArmorItems set from entity @s ArmorItems
data modify storage spawnanimations:temp HandItems set from entity @s HandItems

data merge entity @s {HandItems:[{},{}],ArmorItems:[{id:"minecraft:bundle",count:1,components:{"minecraft:custom_data":{TsSaRemove:1}}},{id:"minecraft:bundle",count:1,components:{"minecraft:custom_data":{TsSaRemove:1}}},{},{}]}
data modify entity @s ArmorItems[0].components.minecraft:bundle_contents set from storage spawnanimations:temp ArmorItems
data modify entity @s ArmorItems[1].components.minecraft:bundle_contents set from storage spawnanimations:temp HandItems
