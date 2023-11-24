# Spawn player randomly around the world spawn

# Determine if player respawns with iron or stone kit
execute if score @p kitsAvailable matches 0 run give @p minecraft:stone_sword 1
execute if score @p kitsAvailable matches 0 run give @p minecraft:stone_pickaxe 1
execute if score @p kitsAvailable >= constant one as @p run function teambattle:respawn/respawniron

# Always run regardless of kit
give @p minecraft:cooked_beef 8
effect give @p minecraft:invisibility 20 1 true
effect give @p minecraft:slow_falling 5 2 true
effect give @p minecraft:saturation 1 9 true
spreadplayers ~ ~ 10 600 true @p