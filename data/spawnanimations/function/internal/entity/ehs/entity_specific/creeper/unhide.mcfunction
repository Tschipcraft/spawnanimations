##by Tschipcraft
# Shows the Charged Creeper Glow

execute if score @s ts.sa.e.nbt.CrCh matches 1 run data merge entity @s {powered:1b}
