##by Tschipcraft

execute if entity @s[nbt={Item:{id:"minecraft:chest",tag:{TsSaRemove:1b}}}] run function spawnanimations:internal/entity/ehs/remove_invalid_item/remove
execute unless entity @s[nbt={Item:{id:"minecraft:chest",tag:{TsSaRemove:1b}}}] run tag @s add ts.sa.i.checked
