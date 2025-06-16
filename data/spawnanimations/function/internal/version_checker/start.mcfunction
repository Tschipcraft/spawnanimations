##by Tschipcraft

execute store result score $version ts.sa.settings run data get entity @r DataVersion
execute unless score $global tvc_ignore matches 1 if score $version ts.sa.settings matches 4500.. run tellraw @a [{"text":"[Spawn Animations] ","color":"gray"},{"text":"?","bold":true,"color":"gold"},{"text":" Future unknown Minecraft version above 1.21.6 detected! This data pack/mod may not work correctly anymore! Please make sure to check for updates in the menu! (","color":"gold"},{"text":"/trigger tschipcraft.menu","underlined":true,"color":"gold","click_event":{"action":"run_command","command":"trigger tschipcraft.menu"},"hover_event":{"action":"show_text","value":"Click here","text":"Click here"}},{"text":")","color":"gold"}]
# Note: 1.17x-1.20x uses the old folder names (function -> functions)

# Announce escape sequence handling changes
execute unless score $global tvc_ignore matches 1 if score $version ts.sa.settings matches 4298..4316 run tellraw @a [{"text":"[Spawn Animations] ","color":"gray"},{"text":"!","bold":true,"color":"gold"},{"text":" Due to changes in escape sequence handling, all text menus (including the settings menu) are unavailable from 25w02a through 25w08a.","color":"gold"}]

execute if score $version ts.sa.settings matches 0 run function spawnanimations:internal/version_checker/retry
