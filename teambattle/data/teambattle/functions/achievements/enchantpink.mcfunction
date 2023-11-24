# Triggers when Pink team enchants an item first
scoreboard players operation Pink score += constant thousand
tellraw @a {"text":"Pink team gets 1000 points for enchanting the first item!","bold":false,"color":"light_purple"}
scoreboard players set global enchant 1