##by Tschipcraft
# Re-enables tile drops if previously disabled

execute if score $gamerule.tile_drops ts.sa.settings matches 1 run gamerule doTileDrops true
