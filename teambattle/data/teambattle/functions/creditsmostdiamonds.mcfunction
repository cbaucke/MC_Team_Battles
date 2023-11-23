# Announce player with most diamonds
execute as @a run scoreboard players operation @s temp_credits = @s mostDiamonds
execute as @a run scoreboard players operation @s temp_credits += @s mostAltDiamonds
scoreboard players set $highest temp_credits -1
execute as @a run scoreboard players operation $highest temp_credits > @s temp_credits
execute as @a if score @s temp_credits = $highest temp_credits run tag @s add mostDiamonds
execute as @a[tag=mostDiamonds, limit=1] run title @a subtitle [{"selector":"@s"},{"text":" With ","color":"white"},{"score":{"name":"@s","objective":"temp_credits"},"color":"white"},{"text":" Diamonds","color":"white"}]
title @a title {"text":"The Miner","color":"white"}