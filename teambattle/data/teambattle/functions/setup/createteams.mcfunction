scoreboard objectives add posXGold dummy "posXGold"
scoreboard objectives add posZGold dummy "posZGold"
scoreboard objectives add posXPink dummy "posZPink"
scoreboard objectives add posZPink dummy "posZPink"
team add Gold
team add Pink
team join Teamless @a
team modify Gold color gold
team modify Gold friendlyFire false
team modify Pink color light_purple
team modify Pink friendlyFire false

# Random teams
execute if score options randTeams matches 1 run function teambattle:setup/assignteams
execute if score options randTeams matches 1 run schedule function teambattle:setup/setup 5s append

# Non-random teams
execute if score options randTeams matches 0 run place template teambattle:teamchooser ~-10 ~9 ~14
execute if score options randTeams matches 0 run tp @a ~-6 ~13 ~19
execute if score options randTeams matches 0 run function teambattle:setup/chooseteams