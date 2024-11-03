##by Tschipcraft

execute store result score $gamerule.send_feedback ts.sa.settings run gamerule sendCommandFeedback

execute if score $gamerule.send_feedback ts.sa.settings matches 1 run function spawnanimations:settings/hide_feedback/hide
