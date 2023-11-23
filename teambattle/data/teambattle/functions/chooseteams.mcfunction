execute unless entity @e[team=Teamless] run schedule function teambattle:setup 5s append

execute if entity @e[team=Teamless] run schedule function teambattle:chooseteams 1s append