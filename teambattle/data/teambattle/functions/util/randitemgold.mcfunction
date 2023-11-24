# Gives the gold team leader a random item, and blaze rods/pearls when applicable, every 5 minutes

tag @p[team=Gold, tag=Leader] add RandItem
execute if score gold giveBlazeRods matches 1 run give @a[tag=Leader, team=Gold] minecraft:blaze_rod 1
execute if score gold giveBlazeRods matches 1 run give @a[tag=Leader, team=Gold] minecraft:ender_pearl 2
execute at @e[type=minecraft:armor_stand, sort=random, limit=1] run setblock ~ ~-1 ~-1 minecraft:redstone_block