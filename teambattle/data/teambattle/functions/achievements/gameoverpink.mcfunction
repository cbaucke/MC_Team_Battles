# Triggers when Pink team kills the dragon
schedule clear teambattle:5minevents
scoreboard players set global gameover 1

# Pink wins if points disabled
effect give @a regeneration 3600 255 true
execute if score options usePoints matches 0 run schedule function teambattle:wincons/pinkwins 4s

# Determine who wins
scoreboard players operation Pink score += constant fourThousand
execute if score options usePoints matches 1 run tellraw @a {"text":"Pink team gets 4,000 points for slaying the dragon!","bold":false,"color":"light_purple"}
execute if score options usePoints matches 1 if score Pink score > Gold score run schedule function teambattle:wincons/pinkwins 4s
execute if score options usePoints matches 1 if score Pink score < Gold score run schedule function teambattle:wincons/goldwins 4s
execute if score options usePoints matches 1 if score Pink score = Gold score run schedule function teambattle:wincons/tie 4s