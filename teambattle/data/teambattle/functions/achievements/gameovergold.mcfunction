# Triggers when Gold team kills the dragon
schedule clear teambattle:5minevents
scoreboard players set global gameover 1

# Gold wins if points disabled
effect give @a regeneration 3600 255 true
execute if score options usePoints matches 0 run schedule function teambattle:goldwins 4s

# Determine who wins
scoreboard players operation Gold score += constant fourThousand
execute if score options usePoints matches 1 run tellraw @a {"text":"Gold team gets 4,000 points for slaying the dragon!","bold":false,"color":"gold"}
execute if score options usePoints matches 1 if score Gold score > Pink score run schedule function teambattle:goldwins 4s
execute if score options usePoints matches 1 if score Gold score < Pink score run schedule function teambattle:pinkwins 4s
execute if score options usePoints matches 1 if score Gold score = Pink score run schedule function teambattle:tie 4s