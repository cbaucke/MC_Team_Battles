# Triggers when Gold team brews a potion first
scoreboard players operation Gold test_score += constant thousand
tellraw @a {"text":"Gold team gets 1000 points for brewing the first potion!","bold":false,"color":"gold"}
scoreboard players set global potion 1