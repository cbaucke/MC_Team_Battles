# Triggers when the time limit is reached
# If points system disabled, start sudden death
execute if score options usePoints matches 0 run function teambattle:suddendeath
return 0

# If points system enabled, end game immediately
title @a title {"text":"Time's Up!","color":"white"}
execute if score Pink score > Gold score run schedule function teambattle:pinkwins 4s
execute if score Pink score < Gold score run schedule function teambattle:goldwins 4s
execute if score Pink score = Gold score run schedule function teambattle:tie 4s