##by Tschipcraft

execute store result score $version ts.sa.settings run data get entity @r DataVersion
execute unless score $global tvc_ignore matches 1 if score $version ts.sa.settings matches 4200.. run tellraw @a [{"text":"[Spawn Animations] ","color":"gray"},{"text":"?","bold":true,"color":"gold"},{"text":" Future unknown Minecraft version above 1.21.4 detected! This data pack/mod may not work correctly anymore! Please make sure to check for updates in the menu! (","color":"gold"},{"text":"/trigger tschipcraft.menu","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger tschipcraft.menu"},"hoverEvent":{"action":"show_text","contents":"Click here"}},{"text":")","color":"gold"}]
# Note: 1.17x-1.20x uses the old folder names (function -> functions)

execute if score $version ts.sa.settings matches 0 run function spawnanimations:internal/version_checker/retry
