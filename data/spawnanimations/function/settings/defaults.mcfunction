##by Tschipcraft
# Sets default settings during installation or if entry is incorrect
# Called by install.mcfunction

execute unless score $activation_dist ts.sa.settings matches 1..100 run scoreboard players set $activation_dist ts.sa.settings 20
execute unless score #lock_distance ts.sa.settings matches 0..1 run scoreboard players set #lock_distance ts.sa.settings 0
execute unless score $activation_mode ts.sa.settings matches -1..2 run scoreboard players set $activation_mode ts.sa.settings 1
execute unless score $enable_poof_anim ts.sa.settings matches -1..2 run scoreboard players set $enable_poof_anim ts.sa.settings 1
execute unless score $play_sounds ts.sa.settings matches -1..2 run scoreboard players set $play_sounds ts.sa.settings 1
execute unless score $hide_armor ts.sa.settings matches -1..2 run scoreboard players set $hide_armor ts.sa.settings 1
execute unless score $hide_emissive ts.sa.settings matches -1..2 run scoreboard players set $hide_emissive ts.sa.settings 1
execute unless score $enderman_hack ts.sa.settings matches -1..2 run scoreboard players set $enderman_hack ts.sa.settings 1
execute unless score $play_unsupport ts.sa.settings matches -1..2 run scoreboard players set $play_unsupport ts.sa.settings 0
