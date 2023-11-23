scoreboard players set options changed 0

execute if score options setDifficulty matches 2 run tellraw @a {"text":"Difficulty set to easy."}
execute if score options setDifficulty matches 2 run scoreboard players set options changed 1
execute if score options setDifficulty matches 2 run scoreboard players set options setDifficulty 0

execute if score options setDifficulty matches 1 run tellraw @a {"text":"Difficulty set to hard."}
execute if score options setDifficulty matches 1 run scoreboard players set options setDifficulty 2
execute if score options setDifficulty matches 2 if score options changed matches 0 run scoreboard players set options changed 1

execute if score options setDifficulty matches 0 if score options changed matches 0 run tellraw @a {"text":"Difficulty set to normal."}
execute if score options setDifficulty matches 0 if score options changed matches 0 run scoreboard players set options setDifficulty 1