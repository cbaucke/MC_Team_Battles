# Changes out of lives players into spectators and TPs them to their team
tag @s add Moved
gamemode spectator @s
title @s times 10t 5s 20t
title @s subtitle {"text":"You'll respawn if the enemy leader dies","color":"white"}
title @s title {"text":"Out of Lives!","color":"red"}
# Change times back to default (otherwise affects ALL future title commands)
title @s times 10t 3.5s 20t

# TP player to leader if there is one
execute if entity @s[team=Gold] if entity @p[team=Gold, tag=Leader, tag=!Dead] run tp @s @p[team=Gold, tag=Leader]
execute if entity @s[team=Pink] if entity @p[team=Pink, tag=Leader, tag=!Dead] run tp @s @p[team=Pink, tag=Leader]

# Otherwise TP to random teammate
execute if entity @s[team=Gold] if entity @p[team=Gold, tag=Leader, tag=Dead] run tp @s @r[team=Gold, tag=!Dead]
execute if entity @s[team=Pink] if entity @p[team=Pink, tag=Leader, tag=Dead] run tp @s @r[team=Pink, tag=!Dead]
