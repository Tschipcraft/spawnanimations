##by Tschipcraft
# Gets triggered whenever a player sets a custom activation distance with the Edit button

tellraw @s {"text":""}
# Range checks
execute if score @s ts.sa.distance matches 101.. run tellraw @s {"text":"Maximum is 100 blocks!","color":"red"}
execute if score @s ts.sa.distance matches 101.. run scoreboard players set @s ts.sa.distance 100
execute if score @s ts.sa.distance matches ..0 run tellraw @s {"text":"Minimum is 1 block!","color":"red"}
execute if score @s ts.sa.distance matches ..0 run scoreboard players set @s ts.sa.distance 1

scoreboard players operation $activation_dist ts.sa.settings = @s ts.sa.distance
scoreboard players reset @s ts.sa.distance

execute if score $activation_dist ts.sa.settings matches 2.. run tellraw @s ["",{"text":"-> Set "},{"text":"[Activation Distance]","color":"yellow"},{"text":" to "},{"score":{"name":"$activation_dist","objective":"ts.sa.settings"},"color":"green","bold":true},{"text":" blocks","color":"green"},{"text":"!"}]
execute if score $activation_dist ts.sa.settings matches 1 run tellraw @s ["",{"text":"-> Set "},{"text":"[Activation Distance]","color":"yellow"},{"text":" to "},{"score":{"name":"$activation_dist","objective":"ts.sa.settings"},"color":"green","bold":true},{"text":" block","color":"green"},{"text":"!"}]

function #spawnanimations:settings
