# Announce player with most time spent sneaking
execute as @a run scoreboard players operation @s temp_credits = @s ticksSneaked
scoreboard players set $highest temp_credits -1
execute as @a run scoreboard players operation $highest temp_credits > @s temp_credits
execute as @a if score @s temp_credits = $highest temp_credits run tag @s add mostSneak
execute as @a[tag=mostSneak, limit=1] run scoreboard players operation @s mostSneak = @s ticksSneaked
execute as @a[tag=mostSneak, limit=1] run scoreboard players operation @s mostSneak /= constant thousTwoHund
execute as @a[tag=mostSneak, limit=1] run title @a subtitle [{"selector":"@s"},{"text":" With ","color":"white"},{"score":{"name":"@s","objective":"mostSneak"},"color":"white"},{"text":" Minutes Crouched","color":"white"}]
title @a title {"text":"The Ninja","color":"white"}