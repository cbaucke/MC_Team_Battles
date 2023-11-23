# Determine if player respawns with iron or stone kit
execute if score @p kitsAvailable >= constant one run function teambattle:respawniron
execute if score @p kitsAvailable matches 0 run give @p minecraft:stone_sword 1
execute if score @p kitsAvailable matches 0 run give @p minecraft:stone_pickaxe 1

# Always run regardless of kit
give @p minecraft:cooked_beef 10
effect give @p minecraft:invisibility 25 1 true
effect give @p minecraft:slow_falling 5 2 true
effect give @p minecraft:saturation 1 9 true
spreadplayers ~ ~ 200 900 true @p