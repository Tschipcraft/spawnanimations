## by Tschipcraft
# Prepares an entity for hiding

# Exclude entities that have the glowing, levitation or invisibility potion effect, are riding another entity, or are burning
execute as @s[predicate=!spawnanimations:exclude] run tag @s add ts.sa.verified
# Exclude silent or no AI mobs
execute as @s[tag=!ts.sa.verified,nbt={Silent:1b}] run tag @s add ts.sa.verified
execute as @s[tag=!ts.sa.verified,nbt={NoAI:1b}] run tag @s add ts.sa.verified

# Hide the entity
execute as @s[tag=!ts.sa.verified] run function spawnanimations:internal/entity/hide
