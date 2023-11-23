# Triggers pink victory when entire gold team is out of lives

scoreboard players set global gameover 1
title @a title {"text":"Gold Team Eliminated!","color":"white"}
schedule function teambattle:pinkwins 4s
