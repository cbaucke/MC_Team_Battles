# Triggers when both teams are tied when the game ends

title @a subtitle {"text":"Teams Are Tied!","color":"white"}
title @a title {"text":"Game Over","color":"white"}
playsound minecraft:music_disc.pigstep master @a ~ ~ ~ 16 1 1
schedule function teambattle:credits 5.5s