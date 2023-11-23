execute unless entity @e[team=Teamless] run schedule function teambattle:setup/setup 5s append

execute if entity @e[team=Teamless] run schedule function teambattle:setup/chooseteams 1s append