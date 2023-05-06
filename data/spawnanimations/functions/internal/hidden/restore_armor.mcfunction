##by Tschipcraft
# This function restores the worn armor and tools into two chest items located in the feet and leggins slot that don't get rendered. This data format is validated by the spawnanimations:validate predicate

data modify storage spawnanimations:temp ArmorItems set from entity @s ArmorItems[0].tag.BlockEntityTag.Items

data modify entity @s HandItems set from entity @s ArmorItems[1].tag.BlockEntityTag.Items
data modify entity @s ArmorItems set from storage spawnanimations:temp ArmorItems