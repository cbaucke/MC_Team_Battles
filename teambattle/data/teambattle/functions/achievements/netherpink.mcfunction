# Triggers when Pink team enters the nether first
scoreboard players operation Pink score += constant thousand
tellraw @a {"text":"Pink team gets 1000 points for entering the Nether first!","bold":false,"color":"light_purple"}
tellraw @a[team=Pink] {"text":"If you can't find a fortress, there will be one at (0, 0) which does not grant points for finding it.","bold":false,"color":"white"}
function teambattle:util/fortressfinder
scoreboard players set global nether 1