# Teleports players to the appropriate spawn building

# TP Pink players
execute as @p if entity @s[team=Pink, tag=!NoLives] run tp @s ~-22 ~-1 ~-2
execute as @p if entity @s[team=Pink, tag=NoLives] run tp @s -6 121 2

# TP Gold players
execute as @p if entity @s[team=Gold, tag=!NoLives] run tp @s ~-30 ~-1 ~-2
execute as @p if entity @s[team=Gold, tag=NoLives] run tp @s 2 121 2

# TP teamless players (only happens if somebody joins late)
execute as @p if entity @s[team=Teamless] run tp @s ~-6 ~-1 ~