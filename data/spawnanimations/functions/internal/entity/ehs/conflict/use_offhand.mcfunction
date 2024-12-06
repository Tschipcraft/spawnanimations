##by Tschipcraft
# Saves a new HandItem to the offhand slot if available

# Copy data
data modify entity @s ArmorItems[1].tag.BlockEntityTag.Items[1] set from storage spawnanimations:temp HandItems[0]
# Clear mainhand slot
data modify storage spawnanimations:temp HandItems[0] set value {}
