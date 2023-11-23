# Triggers when Gold team enters the end first
scoreboard players operation Gold score += constant thousand
tellraw @a {"text":"Gold team gets 1000 points for entering the end first!","bold":false,"color":"gold"}
tellraw @a {"text":"Warning: to trigger the game ending, the dragon must die to a player. DO NOT KILL THE DRAGON WITH BEDS! (you can still damage it with beds)","bold":false,"color":"white"}
scoreboard players set global end 1