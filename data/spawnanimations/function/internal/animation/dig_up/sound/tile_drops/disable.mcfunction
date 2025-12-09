##by Tschipcraft
# Temporarily disables tile drops to execute block break without drops

execute store result score $gamerule.tile_drops ts.sa.settings run gamerule block_drops
execute if score $gamerule.tile_drops ts.sa.settings matches 1 run gamerule block_drops false
