# Spawn player randomly around the world spawn

# Determine if player respawns with iron or stone kit
execute if score @s kitsAvailable matches 0 run give @s minecraft:stone_sword 1
execute if score @s kitsAvailable matches 0 run give @s minecraft:stone_pickaxe 1
execute if score @s kitsAvailable >= constant one as @s run function teambattle:respawn/respawniron

# Always run regardless of kit
give @s minecraft:cooked_beef 8
effect give @s minecraft:invisibility 20 1 true
effect give @s minecraft:slow_falling 5 2 true
effect give @s minecraft:saturation 1 9 true

# Remove dead tags
tag @s remove Dead
tag @s remove LifeRemoved
tag @s remove Moved

spreadplayers ~ ~ 10 600 true @s