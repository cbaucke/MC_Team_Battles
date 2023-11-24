# Spawn player on pink team leader

# Check if there's a valid team leader to spawn on/dead player has respawn on leader available
execute unless entity @p[team=Pink, tag=Leader, distance=10..] run tellraw @p {"text":"Team leader dead or not found, try again later."}
execute unless entity @p[team=Pink, tag=Leader, distance=10..] run return 0
execute if score @p teamRespawns <= constant zero run tellraw @p {"text":"Respawning on team leader is on cooldown, try again later."}
execute if score @p teamRespawns <= constant zero run return 0

# Give items
execute if score @p kitsAvailable matches 0 run give @p minecraft:stone_sword 1
execute if score @p kitsAvailable matches 0 run give @p minecraft:stone_pickaxe 1
execute if score @p kitsAvailable >= constant one as @p run function teambattle:respawn/respawniron
give @p minecraft:cooked_beef 8
effect give @p minecraft:slow_falling 5 2 true
effect give @p minecraft:saturation 1 9 true

# TP to an alive teammate
tp @p @p[team=Pink, tag=Leader, distance=10..]