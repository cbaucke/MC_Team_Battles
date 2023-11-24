# Update match time
scoreboard players operation global timeMins += constant five
execute if score global timeMins >= constant sixty run scoreboard players operation global timeHrs += constant one
execute if score global timeMins >= constant sixty run scoreboard players operation global timeMins -= constant sixty
execute if score global timeHrs matches 0 run tellraw @a [{"text":"Match time: "},{"score":{"name":"global", "objective":"timeMins"}},{"text":" minute(s)"}]
execute if score global timeHrs > constant zero run tellraw @a [{"text":"Match time: "},{"score":{"name":"global", "objective":"timeHrs"}},{"text":" hour(s), "},{"score":{"name":"global", "objective":"timeMins"}},{"text":" minutes(s)"}]

# Check for time limit if enabled (warn 5 minutes before)
execute if score options timeLimit matches 2 if score global timeMins matches 25 if score global timeHrs matches 1 run title @a title {"text":"5 Minutes Left!","color":"white"}
execute if score options timeLimit matches 0 if score global timeMins matches 55 if score global timeHrs matches 0 run title @a title {"text":"5 Minutes Left!","color":"white"}
execute if score options timeLimit matches 2 if score global timeMins matches 30 if score global timeHrs matches 1 run function teambattle:wincons/outoftime
execute if score options timeLimit matches 0 if score global timeMins matches 0 if score global timeHrs matches 1 run function teambattle:wincons/outoftime

# Choose new random leaders
tag @a remove Leader
tag @r[team=Pink, tag=!NoLives] add Leader
tag @r[team=Gold, tag=!NoLives] add Leader
scoreboard players set @p[team=Pink, tag=Leader] Deaths 0
scoreboard players set @p[team=Pink, tag=Leader] hasDied 0
scoreboard players set @p[team=Gold, tag=Leader] Deaths 0
scoreboard players set @p[team=Gold, tag=Leader] hasDied 0
effect give @a[tag=Leader] minecraft:glowing 300
effect give @a[tag=Leader] minecraft:speed 300
tellraw @a {"text":"The team leaders have been updated!","bold":true,"color":"aqua"}

# Reset cooldown to spawn on team leader
scoreboard players set @a[tag=!Leader] teamRespawns 1

# Give random items/late game blaze rods, ender pearls
schedule function teambattle:randitempink .7s append
schedule function teambattle:randitemgold 1.2s append

# Give everyone an extra iron kit every 30 minutes
execute if score global timeMins matches 30 run scoreboard players operation @a kitsAvailable += constant one
execute if score global timeMins matches 0 if score global timeHrs >= constant one run scoreboard players operation @a kitsAvailable += constant one
execute if score global timeMins matches 30 if score global timeHrs matches 0 run tellraw @a {"text":"Players spawning without a bed will now receive one free set of iron gear! Everybody gets one kit every 30 minutes.","bold":false,"color":"white"}
execute if score global timeMins matches 0 if score global timeHrs >= constant one run tellraw @a {"text":"An additional iron kit is now available when respawning without a bed.","bold":false,"color":"white"}
execute if score global timeMins matches 30 if score global timeHrs >= constant one run tellraw @a {"text":"An additional iron kit is now available when respawning without a bed.","bold":false,"color":"white"}

# Start giving blaze rods if match time at least 30 mins and team has entered the nether (announce 5 mins before)
execute if score global timeMins >= constant twentyFive if entity @a[advancements={minecraft:story/enter_the_nether=true}, team=Pink] run scoreboard players set pink giveBlazeRods 1
execute if score global timeMins >= constant twentyFive if entity @a[advancements={minecraft:story/enter_the_nether=true}, team=Gold] run scoreboard players set gold giveBlazeRods 1
execute if score global timeMins matches 25 if score global timeHrs matches 0 run tellraw @a {"text":"Starting with the next team leaders, teams who have entered the nether will receive 1 blaze rod and 2 ender pearls in addition to their other items!","bold":false,"color":"white"}

# Give coordinates
execute store result score @a posXGold run data get entity @p[team=Gold,tag=Leader] Pos[0]
execute store result score @a posZGold run data get entity @p[team=Gold,tag=Leader] Pos[2]
execute store result score @a posXPink run data get entity @p[team=Pink,tag=Leader] Pos[0]
execute store result score @a posZPink run data get entity @p[team=Pink,tag=Leader] Pos[2]
title @a[team=Pink] actionbar ["",{"text":" Position X: "},{"score":{"name":"@p[team=Gold,tag=Leader]","objective":"posXGold"},"color":"yellow","insertion":" "},{"text":" Position Z: "},{"score":{"name":"@p[team=Gold,tag=Leader]","objective":"posZGold"},"color":"yellow","insertion":" "}]
title @a[team=Gold] actionbar ["",{"text":" Position X: "},{"score":{"name":"@p[team=Pink,tag=Leader]","objective":"posXPink"},"color":"yellow","insertion":" "},{"text":" Position Z: "},{"score":{"name":"@p[team=Pink,tag=Leader]","objective":"posZPink"},"color":"yellow","insertion":" "}]

schedule function teambattle:5minevents 300s append