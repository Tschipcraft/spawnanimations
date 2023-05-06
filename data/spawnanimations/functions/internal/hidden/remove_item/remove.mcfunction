##by Tschipcraft

tellraw @a[gamemode=creative] [{"text":"[Spawn Animations]","color":"gray"},{"text":" ⚠ A hidden entity was killed instantly. The worn armor and tools are not recoverable. This error can happen if farms are built for supported mobs. ","color":"red","bold":false},{"text":"Please disable the [Hide worn armor and tools] option in the settings!","color":"red","bold":false,"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to disable this feature"}]},"clickEvent":{"action":"run_command","value":"/function spawnanimations:settings/disable_hidearmorandtools"}}]

kill @s[type=minecraft:item]
