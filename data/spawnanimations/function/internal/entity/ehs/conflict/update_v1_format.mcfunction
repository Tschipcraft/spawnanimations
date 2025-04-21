##by Tschipcraft
# Update the data format of hidden entities from pre-1.21.5 versions

# Move entry from armor.feet to armor.body
data modify entity @s equipment.body set from entity @s equipment.feet
data remove entity @s equipment.feet
