# Triggers gold victory when entire pink team is out of lives

scoreboard players set global gameover 1
title @a title {"text":"Pink Team Eliminated!","color":"white"}
schedule function teambattle:wincons/goldwins 4s
