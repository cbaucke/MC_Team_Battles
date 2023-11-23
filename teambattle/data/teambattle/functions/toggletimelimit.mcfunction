scoreboard players set options changed 0

execute if score options timeLimit matches 2 run tellraw @a {"text":"Time limit set to 1 hour."}
execute if score options timeLimit matches 2 run scoreboard players set options changed 1
execute if score options timeLimit matches 2 run scoreboard players set options timeLimit 0

execute if score options timeLimit matches 1 run tellraw @a {"text":"Time limit set to 90 minutes."}
execute if score options timeLimit matches 1 run scoreboard players set options timeLimit 2
execute if score options timeLimit matches 2 if score options changed matches 0 run scoreboard players set options changed 1

execute if score options timeLimit matches 0 if score options changed matches 0 run tellraw @a {"text":"Time limit disabled."}
execute if score options timeLimit matches 0 if score options changed matches 0 run scoreboard players set options timeLimit 1