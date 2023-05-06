##by Tschipcraft

execute store result score #temp ts.sa.settings run execute on attacker
execute if score #temp ts.sa.settings matches 1.. run function spawnanimations:internal/animation/dig_up/start
