##by Tschipcraft
# Hides the Charged Creeper Glow

execute store result score @s ts.sa.e.nbt.CrCh run data get entity @s powered
execute if score @s ts.sa.e.nbt.CrCh matches 1 run data merge entity @s {powered:0b}
