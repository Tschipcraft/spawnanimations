## by Tschipcraft

tellraw @s ["",{"text":"➤ Spawn Animations by Tschipcraft installed!","italic":false,"color":"green"},{"text":"\n"},{"text":"[Settings]","color":"aqua","clickEvent":{"action":"run_command","value":"/function spawnanimations:settings/core"},"hoverEvent":{"action":"show_text","contents":"Click here"}},{"text":" "},{"text":"[Reset]","color":"red","clickEvent":{"action":"run_command","value":"/function spawnanimations:reset"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Reset the whole data pack.","color":"white"}]}},{"text":" "},{"text":"[Uninstall]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function spawnanimations:uninstall"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Uninstalls the data pack.","color":"white"}]}},{"text":" "},{"text":"[Check for updates] ","color":"blue","clickEvent":{"action":"open_url","value":"https://tschipcraft.ddns.net/update/test.html?pack=spawnanimations&v=1.9"},"hoverEvent":{"action":"show_text","contents":"Click here to check for updates"}}]
scoreboard players set @s ts.sa.welcome 1
