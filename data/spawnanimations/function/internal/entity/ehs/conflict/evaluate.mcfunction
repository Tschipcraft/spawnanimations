##by Tschipcraft

execute if predicate spawnanimations:validate/save_format at @s run function spawnanimations:internal/entity/ehs/conflict/resolve
execute unless predicate spawnanimations:validate/save_format at @s run function spawnanimations:internal/entity/ehs/conflict/error
