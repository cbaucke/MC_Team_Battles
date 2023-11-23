# Handles the button to start the game in the pre-game lobby

execute if score options gameStart matches 1 run tellraw @a {"text":"Starting game!"}
execute if score options gameStart matches 1 run schedule clear teambattle:setup/cancelstart
execute if score options gameStart matches 1 run function teambattle:setup/begin

execute if score options gameStart matches 0 run tellraw @a {"text":"Are you sure you want to start? Press the button again to confirm."}
execute if score options gameStart matches 0 run schedule function teambattle:setup/cancelstart 10s append
execute if score options gameStart matches 0 run scoreboard players set options gameStart 1