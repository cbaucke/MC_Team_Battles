# Spawn player on gold team leader

# Check if there's a valid team leader to spawn on/dead player has respawn on leader available
execute unless entity @p[team=Gold, tag=Leader, distance=20..] run tellraw @s {"text":"Team leader dead or not found, try again later."}
execute unless entity @p[team=Gold, tag=Leader, distance=20..] run return 0
execute if score @s teamRespawns <= constant zero run tellraw @s {"text":"Respawning on team leader is on cooldown, try again later."}
execute if score @s teamRespawns <= constant zero run return 0

# Give items
execute if score @s kitsAvailable matches 0 run give @s minecraft:stone_sword 1
execute if score @s kitsAvailable matches 0 run give @s minecraft:stone_pickaxe 1
execute if score @s kitsAvailable >= constant one as @s run function teambattle:respawn/respawniron
give @s minecraft:cooked_beef 8
effect give @s minecraft:slow_falling 5 2 true
effect give @s minecraft:saturation 1 9 true

# Remove dead tags
tag @s remove Dead
tag @s remove LifeRemoved
tag @s remove Moved

# TP to an alive teammate
tp @s @p[team=Gold, tag=Leader, distance=20..]