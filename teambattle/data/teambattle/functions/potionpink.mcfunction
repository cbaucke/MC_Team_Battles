# Triggers when Pink team brews a potion first
scoreboard players operation Pink test_score += constant thousand
tellraw @a {"text":"Pink team gets 1000 points for brewing the first potion!","bold":false,"color":"light_purple"}
scoreboard players set global potion 1