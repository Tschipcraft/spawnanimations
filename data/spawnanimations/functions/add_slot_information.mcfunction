##by Tschipcraft
# This function is assumed to be called from the user upgrading Spawn Animations from v1.9.4 to v1.9.5 to add slot information to existing entity data for hidden entities. This has to be done to ensure full compatibility with the new format when upgrading a Minecraft world to 1.20.5 or later with Spawn Animations installed.

execute as @e[type=#spawnanimations:can_wear_armor,tag=ts.sa.to_verify,tag=ts.sa.ehs.saved] if predicate spawnanimations:validate at @s run function spawnanimations:internal/entity/ehs/add_slot_information

tellraw @s [{"text":"[Spawn Animations]","color":"gray"},{"text":"\n"},{"text":"Slot information was successfully encoded into all loaded entities. If there are any entities in unloaded chunks that you want to preserve as well, load them and run this function again.\nIf not, you can now safely upgrade your world to Minecraft 1.20.5+","color":"yellow"}]
