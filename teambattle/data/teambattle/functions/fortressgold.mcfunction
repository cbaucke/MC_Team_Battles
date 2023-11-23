# Triggers when Gold team finds a fortress first
scoreboard players operation Gold score += constant thousand
tellraw @a {"text":"Gold team gets 1000 points for finding a fortress first!","bold":false,"color":"gold"}
scoreboard players set global fortress 1