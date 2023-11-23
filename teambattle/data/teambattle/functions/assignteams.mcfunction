# Assigning teams randomly
team join Gold @r[team=Teamless]
team join Pink @r[team=Teamless]

execute if entity @a[team=Teamless] run function teambattle:assignteams

