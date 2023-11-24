# Triggers when Pink team enters the nether first
scoreboard players operation Pink score += constant thousand
tellraw @a {"text":"Pink team gets 1000 points for entering the Nether first!","bold":false,"color":"light_purple"}
tellraw @a {"text":"Tip: To find a fortress, try searching in a diagonal line (X and Z changing at the same time)","bold":false,"color":"white"}
function teambattle:util/fortressfinder
scoreboard players set global nether 1