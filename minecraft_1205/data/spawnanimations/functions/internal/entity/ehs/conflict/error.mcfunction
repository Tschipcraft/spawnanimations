##by Tschipcraft
# Recovers data that wasn't overwritten
# Called by evaluate.mcfunction

# Restore items that weren't overwritten
execute unless data entity @s ArmorItems[2].id if data entity @s ArmorItems[0].components.minecraft:container[2].item.components.minecraft:container[0].item.id if data entity @s ArmorItems[0].components.minecraft:custom_data.TsSaRemove run data modify entity @s ArmorItems[2] set from entity @s ArmorItems[0].components.minecraft:container[2].item.components.minecraft:container[0].item
execute unless data entity @s ArmorItems[3].id if data entity @s ArmorItems[0].components.minecraft:container[3].item.components.minecraft:container[0].item.id if data entity @s ArmorItems[0].components.minecraft:custom_data.TsSaRemove run data modify entity @s ArmorItems[3] set from entity @s ArmorItems[0].components.minecraft:container[3].item.components.minecraft:container[0].item
execute unless data entity @s ArmorItems[1].id if data entity @s ArmorItems[0].components.minecraft:container[1].item.components.minecraft:container[0].item.id if data entity @s ArmorItems[0].components.minecraft:custom_data.TsSaRemove run data modify entity @s ArmorItems[1] set from entity @s ArmorItems[0].components.minecraft:container[1].item.components.minecraft:container[0].item

execute unless data entity @s HandItems[0].id if data entity @s ArmorItems[1].components.minecraft:container[0].item.components.minecraft:container[0].item.id if data entity @s ArmorItems[1].components.minecraft:custom_data.TsSaRemove run data modify entity @s HandItems[0] set from entity @s ArmorItems[1].components.minecraft:container[0].item.components.minecraft:container[0].item
execute unless data entity @s HandItems[1].id if data entity @s ArmorItems[1].components.minecraft:container[1].item.components.minecraft:container[0].item.id if data entity @s ArmorItems[1].components.minecraft:custom_data.TsSaRemove run data modify entity @s HandItems[1] set from entity @s ArmorItems[1].components.minecraft:container[1].item.components.minecraft:container[0].item

# Remove container items
execute if data entity @s ArmorItems[0].components.minecraft:custom_data.TsSaRemove run data modify entity @s ArmorItems[0] set value {}
execute if data entity @s ArmorItems[1].components.minecraft:custom_data.TsSaRemove run data modify entity @s ArmorItems[1] set value {}

tag @s remove ts.sa.ehs.saved

#tellraw @a[gamemode=creative] ["",{"text":"[Spawn Animations]","color":"gray"},{"text":" \u26a0 A hidden entity was modified by a different mod or data pack. ","bold":false,"color":"yellow"},{"text": "If you encounter issues, please report this incompatibility here.","bold":false,"underlined":true,"color":"yellow","clickEvent":{"action":"open_url","value":"https://github.com/Tschipcraft/spawnanimations/issues/new/choose"},"hoverEvent":{"action":"show_text","contents":"✉ Report this issue on GitHub."}}]

function spawnanimations:internal/animation/dig_up/verify_in_air
