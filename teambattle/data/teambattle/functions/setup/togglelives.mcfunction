scoreboard players set options changed 0

execute if score options setLives matches 2 run tellraw @a {"text":"Players will have unlimited lives."}
execute if score options setLives matches 2 run scoreboard players set options changed 1
execute if score options setLives matches 2 run scoreboard players set options setLives 0

execute if score options setLives matches 1 run tellraw @a {"text":"Players will have 3 extra lives."}
execute if score options setLives matches 1 run scoreboard players set options setLives 2
execute if score options setLives matches 2 if score options changed matches 0 run scoreboard players set options changed 1

execute if score options setLives matches 0 if score options changed matches 0 run tellraw @a {"text":"Players will have NO extra lives (revive teammates by killing the enemy leader)."}
execute if score options setLives matches 0 if score options changed matches 0 run scoreboard players set options setLives 1