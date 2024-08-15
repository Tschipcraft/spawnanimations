##by Tschipcraft

execute if entity @s[nbt={Item:{id:"minecraft:chest",count:1,components:{"minecraft:custom_data":{TsSaRemove:1}}}}] run function spawnanimations:internal/entity/ehs/remove_invalid_item/remove
execute unless entity @s[nbt={Item:{id:"minecraft:chest",count:1,components:{"minecraft:custom_data":{TsSaRemove:1}}}}] run tag @s add ts.sa.i.checked
