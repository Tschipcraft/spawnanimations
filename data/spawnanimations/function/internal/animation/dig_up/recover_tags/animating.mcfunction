##by Tschipcraft
# Recovers entity tags that were removed by other mods/data packs during the dig up animation

# We set every possible tag an entity in this state might have in hope that we can properly recover it
tag @s add ts.sa.verify
tag @s add ts.sa.protected

tag @s add ts.sa.hidden
execute if score $hide_armor ts.sa.settings matches 1..2 run tag @s[type=#spawnanimations:can_wear_armor,predicate=spawnanimations:validate/save_format] add ts.sa.ehs.saved
execute if score $hide_emissive ts.sa.settings matches 1..2 run tag @s[type=#spawnanimations:has_emissive_layer] add ts.sa.ehs.shrunk
execute if score $hide_emissive ts.sa.settings matches 1..2 run tag @s add ts.sa.ehs.pehkui.shrunk
execute if score $enderman_hack ts.sa.settings matches 1..2 run tag @s[type=minecraft:enderman] add ts.sa.ehs.pehkui.hitbox
