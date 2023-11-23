# Announce player with most distance spent sprinting
execute as @a run scoreboard players operation @s temp_credits = @s mostRan
scoreboard players set $highest temp_credits -1
execute as @a run scoreboard players operation $highest temp_credits > @s temp_credits
execute as @a if score @s temp_credits = $highest temp_credits run tag @s add mostRan
execute as @a[tag=mostRan, limit=1] run scoreboard players operation @s mostRan = @s cmRan
execute as @a[tag=mostRan, limit=1] run scoreboard players operation @s mostRan /= constant hundred
execute as @a[tag=mostRan, limit=1] run title @a subtitle [{"selector":"@s"},{"text":" With ","color":"white"},{"score":{"name":"@s","objective":"mostRan"},"color":"white"},{"text":" Blocks Sprinted","color":"white"}]
title @a title {"text":"The Loudfoot","color":"white"}