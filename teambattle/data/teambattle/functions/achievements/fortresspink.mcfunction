# Triggers when Pink team finds a fortress first
scoreboard players operation Pink score += constant thousand
tellraw @a {"text":"Pink team gets 1000 points for finding a fortress first!","bold":false,"color":"light_purple"}
scoreboard players set global fortress 1