##by Tschipcraft
# Checks if entity has old armor format and upgrades if needed
# Called by loop.mcfunction

execute as @e[type=#spawnanimations:can_wear_armor,tag=ts.sa.to_verify,tag=ts.sa.ehs.saved] if predicate spawnanimations:validate/detect_v0_format at @s run function spawnanimations:internal/entity/ehs/conflict/update_v0_format
