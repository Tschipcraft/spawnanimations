## by Tschipcraft
# Prepares an entity for hiding

# Recover entity tags that may have been removed by other mods/data packs (Issue #26)
execute as @s[scores={ts.sa.timer=-300..99}] run function spawnanimations:internal/animation/dig_up/recover_tags/animating
execute as @s[scores={ts.sa.e.nbt.Sil=0},tag=!ts.sa.verify] run function spawnanimations:internal/animation/dig_up/recover_tags/hidden
tag @s[scores={ts.sa.timer=100}] add ts.sa.verified

# Exclude out of range entities in Vanilla activation mode
execute if score $activation_mode ts.sa.settings matches -1..0 if score $activation_dist ts.sa.settings matches 1..24 as @s[tag=!ts.sa.verified,tag=!ts.sa.verify,tag=!ts.sa.to_verify] unless entity @a[gamemode=!spectator,distance=..25] run tag @s add ts.sa.verified
execute if score $activation_mode ts.sa.settings matches -1..0 if score $activation_dist ts.sa.settings matches 25.. as @s[tag=!ts.sa.verified,tag=!ts.sa.verify,tag=!ts.sa.to_verify] unless entity @a[gamemode=!spectator,distance=..100] run tag @s add ts.sa.verified

# Exclude entities that have the glowing, levitation or invisibility potion effect, are riding another entity, or are burning
tag @s[tag=!ts.sa.verified,tag=!ts.sa.verify,tag=!ts.sa.to_verify,predicate=!spawnanimations:exclude] add ts.sa.verified

# Exclude silent or no AI mobs
tag @s[tag=!ts.sa.verified,tag=!ts.sa.verify,tag=!ts.sa.to_verify,nbt={Silent:1b}] add ts.sa.verified
tag @s[tag=!ts.sa.verified,tag=!ts.sa.verify,tag=!ts.sa.to_verify,nbt={NoAI:1b}] add ts.sa.verified

# Hide the entity
execute as @s[tag=!ts.sa.verified,tag=!ts.sa.verify,tag=!ts.sa.to_verify] run function spawnanimations:internal/entity/hide
