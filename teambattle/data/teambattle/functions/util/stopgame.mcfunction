# Called manually to reset the game when developing/testing 
# DONT CALL WHILE PLAYING

effect clear @a 
team leave @a
scoreboard players reset @a
scoreboard players reset Gold
scoreboard players reset Pink
scoreboard objectives setdisplay list
scoreboard objectives setdisplay sidebar
advancement revoke @a everything
schedule clear teambattle:util/5minevents
schedule clear teambattle:setup/gamestart
schedule clear teambattle:util/fortressfinder
