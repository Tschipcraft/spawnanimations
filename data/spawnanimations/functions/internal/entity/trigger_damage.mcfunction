##by Tschipcraft
# Checks if a hidden entity was damaged

execute if score $version ts.sa.settings matches ..3319 run function spawnanimations:internal/entity/trigger_damage/legacy
execute if score $version ts.sa.settings matches 3320.. run function spawnanimations:internal/entity/trigger_damage/1_19_4
