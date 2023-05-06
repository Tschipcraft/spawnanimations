##by Tschipcraft
# This function gets triggered in the loop when a hidden enitiy is noticably edited

tellraw @a[gamemode=creative] ["",{"text":"[Spawn Animations]","color":"gray"},{"text":" \u26a0 A hidden entity was modified by a different mod or data pack. ","bold":false,"color":"red"},{"text": "If you encounter issues, please report this incompatibility here.","bold":false,"underlined":true,"color":"red","clickEvent":{"action":"open_url","value":"https://github.com/Tschipcraft/spawnanimations/issues/new/choose"},"hoverEvent":{"action":"show_text","contents":"Click here"}}]

function spawnanimations:internal/hidden/restore_armor
function spawnanimations:internal/animation/dig_up/verify_in_air
