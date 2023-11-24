# Triggered when gold team kills all of pink team in sudden death
scoreboard players set global gameover 1
title @a title {"text":"Pink Team Has Been Defeated!","color":"white"}
schedule function teambattle:wincons/goldwins 4s