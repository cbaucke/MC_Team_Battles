# Special iron gear kit - only give if kitsAvailable >= 1
give @s minecraft:iron_helmet 1
give @s minecraft:iron_chestplate 1
give @s minecraft:iron_leggings 1
give @s minecraft:iron_boots 1
give @s minecraft:iron_sword 1
give @s minecraft:iron_pickaxe 1
give @s minecraft:iron_axe 1
give @s minecraft:iron_shovel 1
give @s minecraft:shield 1
scoreboard players operation @s kitsAvailable -= constant one
tellraw @s [{"text":"Iron kit successfully redeemed. You have "},{"score":{"name":"@s", "objective":"kitsAvailable"}},{"text":"  remaining iron kits available."}]