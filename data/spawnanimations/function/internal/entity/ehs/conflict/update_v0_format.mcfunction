##by Tschipcraft
# Update the data format of hidden entities from pre-1.20.5 versions

# Copy to cache
data modify storage spawnanimations:temp equipment set value {}
data modify storage spawnanimations:temp equipment set from entity @s equipment
data remove entity @s equipment

# Restore Hand Items
data modify entity @s equipment.mainhand set from storage spawnanimations:temp equipment.legs.components.minecraft:container[0].item
data modify entity @s equipment.offhand set from storage spawnanimations:temp equipment.legs.components.minecraft:container[1].item

# Restore Armor Items in correct order
# Set foot slot
data modify entity @s equipment.feet set from storage spawnanimations:temp equipment.feet.components.minecraft:container[0].item
# If foot slot item is not in foot_armor; move item to leg slot
execute unless items entity @s armor.feet #minecraft:foot_armor run data modify entity @s equipment.legs set from storage spawnanimations:temp equipment.feet.components.minecraft:container[0].item
execute unless items entity @s armor.feet #minecraft:foot_armor run data remove entity @s equipment.feet

# If leg slot is not empty, foot item must have been moved up, set chest slot
execute if items entity @s armor.legs * run data modify entity @s equipment.chest set from storage spawnanimations:temp equipment.feet.components.minecraft:container[1].item
# If leg slot is empty, set it
execute unless items entity @s armor.legs * run data modify entity @s equipment.legs set from storage spawnanimations:temp equipment.feet.components.minecraft:container[1].item
# If leg slot item is not in leg_armor, but chest slot is already set; move chest slot item to head slot and leg slot item to chest slot
execute unless items entity @s armor.legs #minecraft:leg_armor if items entity @s armor.chest * run data modify entity @s equipment.head set from entity @s equipment.chest
# If leg slot item is not in leg_armor and chest slot is empty; move leg slot item to chest slot
execute unless items entity @s armor.legs #minecraft:leg_armor run data modify entity @s equipment.chest set from entity @s equipment.legs
# If leg slot item is not in leg_armor, clear leg slot
execute unless items entity @s armor.legs #minecraft:leg_armor run data remove entity @s equipment.legs

# If chest slot is not empty, leg item must have been moved up, merge with head slot (merge instead of set because head slot might have been set in previous step and we don't want to overwrite it with empty/invalid data)
execute if items entity @s armor.chest * run data modify entity @s equipment.head merge from storage spawnanimations:temp equipment.feet.components.minecraft:container[2].item
# If chest slot is empty, set it
execute unless items entity @s armor.chest * run data modify entity @s equipment.chest set from storage spawnanimations:temp equipment.feet.components.minecraft:container[2].item
# If chest slot item is not in chest_armor and head slot is empty; move chest slot item to head slot. We ignore the other case here, since we have no other slots left
execute unless items entity @s armor.chest #minecraft:chest_armor unless items entity @s armor.head * run data modify entity @s equipment.head set from entity @s equipment.chest
# If chest slot item is not in chest_armor, clear chest slot
execute unless items entity @s armor.chest #minecraft:chest_armor run data remove entity @s equipment.chest

# If head slot is empty, set it
execute unless items entity @s armor.head * run data modify entity @s equipment.head merge from storage spawnanimations:temp equipment.feet.components.minecraft:container[3].item


# Set tags and schedule resaving in new format
tag @s remove ts.sa.ehs.saved
function spawnanimations:internal/entity/hide
