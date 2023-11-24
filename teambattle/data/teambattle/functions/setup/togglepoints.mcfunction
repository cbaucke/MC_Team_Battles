scoreboard players set options changed 0

execute if score options usePoints matches 0 run tellraw @a {"text":"Points system enabled (win by having the most points)."}
execute if score options usePoints matches 0 run scoreboard players set options changed 1
execute if score options usePoints matches 0 run scoreboard players set options usePoints 1

execute if score options usePoints matches 1 if score options changed matches 0 run tellraw @a {"text":"Points system disabled (win by killing the other team or the dragon)."}
execute if score options usePoints matches 1 if score options changed matches 0 run scoreboard players set options usePoints 0