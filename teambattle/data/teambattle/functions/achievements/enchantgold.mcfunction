# Triggers when Gold team enchants an item first
scoreboard players operation Gold score += constant thousand
tellraw @a {"text":"Gold team gets 1000 points for enchanting the first item!","bold":false,"color":"gold"}
scoreboard players set global enchant 1