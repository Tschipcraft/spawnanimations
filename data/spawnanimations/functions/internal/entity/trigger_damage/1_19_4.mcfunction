##by Tschipcraft

scoreboard players reset #temp ts.sa.settings
execute on attacker run scoreboard players set #temp ts.sa.settings 1
execute if score #temp ts.sa.settings matches 1.. run function spawnanimations:internal/animation/dig_up/start
