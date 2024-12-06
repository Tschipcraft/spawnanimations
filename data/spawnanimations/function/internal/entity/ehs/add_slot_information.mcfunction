##by Tschipcraft
# This function is assumed to be called from the user upgrading Spawn Animations from v1.9.4 to v1.9.5 to add slot information to existing entity data for hidden entities. This has to be done to ensure full compatibility with the new format when upgrading a Minecraft world to 1.20.5 or later with Spawn Animations installed.

# Encode slot information for later retrieval
data modify entity @s ArmorItems[0].tag.BlockEntityTag.Items[0] merge value {Slot:0b}
data modify entity @s ArmorItems[0].tag.BlockEntityTag.Items[1] merge value {Slot:1b}
data modify entity @s ArmorItems[0].tag.BlockEntityTag.Items[2] merge value {Slot:2b}
data modify entity @s ArmorItems[0].tag.BlockEntityTag.Items[3] merge value {Slot:3b}

data modify entity @s ArmorItems[1].tag.BlockEntityTag.Items[0] merge value {Slot:0b}
data modify entity @s ArmorItems[1].tag.BlockEntityTag.Items[1] merge value {Slot:1b}
