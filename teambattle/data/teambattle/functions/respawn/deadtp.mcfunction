# Teleports all dead players to their respective respawn waiting room
# Triggers once a player presses the Respawn button

# Check if dead player still has lives
execute as @e[type=player, tag=Dead] if score options setLives > constant zero if score @s Lives matches 0 run tag @s add NoLives
execute as @e[type=player, tag=Dead, tag=NoLives, tag=!Moved] run function teambattle:respawn/spectatortp

# Remove a life if lives enabled
execute as @e[type=player, tag=Dead, tag=!NoLives, tag=!LifeRemoved] if score options setLives > constant zero run scoreboard players remove @s Lives 1
execute as @e[type=player, tag=Dead, tag=!NoLives, tag=!LifeRemoved] if score options setLives > constant zero run tag @s add LifeRemoved

# TP dead player to respawn room (first try TP'ing dead players who are somehow away from the spawn area back to the spawn area)
execute positioned ~ ~ ~ if entity @e[type=player, tag=Dead, tag=!NoLives, distance=32..] run tp @e[type=player, tag=Dead, tag=!NoLives, distance=32..] ~ ~ ~
execute positioned ~ ~ ~ if entity @e[type=player, tag=Dead, tag=!NoLives, team=Gold, distance=..2] as @e[type=player, tag=Dead, tag=!NoLives, team=Gold, distance=..2] run function teambattle:respawn/respawnwait
execute positioned ~ ~ ~ if entity @e[type=player, tag=Dead, tag=!NoLives, team=Pink, distance=..2] as @e[type=player, tag=Dead, tag=!NoLives, team=Pink, distance=..2] run function teambattle:respawn/respawnwait