##by Tschipcraft

execute store result score $version ts.sa.settings run data get entity @r DataVersion
# Note: 1.21+ uses the new folder names (functions -> function)
#execute if score $version ts.sa.settings matches 2976..3218 run say 1.19 detected!
#execute if score $version ts.sa.settings matches 2731..2975 run say 1.18 detected!
#execute if score $version ts.sa.settings matches 2587..2730 run say 1.17 detected!
execute if score $version ts.sa.settings matches 2231..2586 run tellraw @a [{"text":"[Spawn Animations] ","color":"gray"},{"text":"\u26a0 Minecraft version ","color":"red"},{"text":"1.16","color":"red","bold": true},{"text":" detected! This pack does not work in 1.16! Please use ","color":"red"},{"text": "1.17 or above", "color":"red","underlined":true},{"text":"!","color":"red"}]
execute if score $version ts.sa.settings matches 1977..2230 run tellraw @a [{"text":"[Spawn Animations] ","color":"gray"},{"text":"\u26a0 Minecraft version ","color":"red"},{"text":"1.15","color":"red","bold": true},{"text":" detected! This pack does not work in 1.15! Please use ","color":"red"},{"text": "1.17 or above", "color":"red","underlined":true},{"text":"!","color":"red"}]
execute if score $version ts.sa.settings matches 1632..1976 run tellraw @a [{"text":"[Spawn Animations] ","color":"gray"},{"text":"\u26a0 Minecraft version ","color":"red"},{"text":"1.14","color":"red","bold": true},{"text":" detected! This pack does not work in 1.14! Please use ","color":"red"},{"text": "1.17 or above", "color":"red","underlined":true},{"text":"!","color":"red"}]
execute if score $version ts.sa.settings matches 1343..1631 run tellraw @a [{"text":"[Spawn Animations] ","color":"gray"},{"text":"\u26a0 Minecraft version ","color":"red"},{"text":"1.13","color":"red","bold": true},{"text":" detected! This pack does not work in 1.13! Please use ","color":"red"},{"text": "1.17 or above", "color":"red","underlined":true},{"text":"!","color":"red"}]

execute if score $version ts.sa.settings matches 0 run function spawnanimations:internal/version_checker/retry
