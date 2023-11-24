# Triggered when pink team kills all of gold team in sudden death
scoreboard players set global gameover 1
title @a title {"text":"Gold Team Has Been Defeated!","color":"white"}
schedule function teambattle:wincons/pinkwins 4s