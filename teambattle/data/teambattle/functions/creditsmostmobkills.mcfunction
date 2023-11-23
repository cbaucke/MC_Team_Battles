# Announce player with most mob kills
execute as @a run scoreboard players operation @s temp_credits = @s mostMobKills
execute as @a run scoreboard players operation @s temp_credits -= @s mostKills
scoreboard players set $highest temp_credits -1
execute as @a run scoreboard players operation $highest temp_credits > @s temp_credits
execute as @a if score @s temp_credits = $highest temp_credits run tag @s add mostMobKills
execute as @a[tag=mostMobKills, limit=1] run title @a subtitle [{"selector":"@s"},{"text":" With ","color":"white"},{"score":{"name":"@s","objective":"temp_credits"},"color":"white"},{"text":" Mob Kills","color":"white"}]
title @a title {"text":"The Butcher","color":"white"}