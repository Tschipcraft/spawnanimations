##by Tschipcraft
# Recovers data that wasn't overwritten
# Called by evaluate.mcfunction

# Restore items that weren't overwritten
# New save format now uses only one chest item. If it's gone, we can't recover anything

# Remove container item
execute if data entity @s equipment.body.components.minecraft:custom_data.TsSaRemove run data remove entity @s equipment.body

tag @s remove ts.sa.ehs.saved

#tellraw @a[gamemode=creative] ["",{"text":"[Spawn Animations]","color":"gray"},{"text":" \u26a0 A hidden entity was modified by a different mod or data pack. ","bold":false,"color":"yellow"},{"text": "If you encounter issues, please report this incompatibility here.","bold":false,"underlined":true,"color":"yellow","clickEvent":{"action":"open_url","value":"https://github.com/Tschipcraft/spawnanimations/issues"},"hoverEvent":{"action":"show_text","contents":"✉ Report this issue on GitHub."}}]

function spawnanimations:internal/animation/dig_up/verify_in_air
