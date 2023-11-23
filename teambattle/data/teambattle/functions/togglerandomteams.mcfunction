scoreboard players set options changed 0

execute if score options randTeams matches 0 run tellraw @a {"text":"Teams will be random."}
execute if score options randTeams matches 0 run scoreboard players set options changed 1
execute if score options randTeams matches 0 run scoreboard players set options randTeams 1

execute if score options randTeams matches 1 if score options changed matches 0 run tellraw @a {"text":"Teams will not be random."}
execute if score options randTeams matches 1 if score options changed matches 0 run scoreboard players set options randTeams 0