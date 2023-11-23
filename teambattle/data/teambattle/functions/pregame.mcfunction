# Run before players join

# Initialize gamerules
gamerule spawnRadius 0
gamerule commandBlockOutput false
gamerule doDaylightCycle false
time set day
gamemode adventure @a

# Ininitialize starting team (so pvp will be disabled in lobby)
team add Teamless
team modify Teamless friendlyFire false

# Initialize options variables
scoreboard objectives add changed dummy
scoreboard players set options changed 0

scoreboard objectives add gameStart dummy
scoreboard players set options gameStart 0

scoreboard objectives add enableWeather dummy
scoreboard players set options enableWeather 0

scoreboard objectives add setDifficulty dummy
scoreboard players set options setDifficulty 2

scoreboard objectives add timeLimit dummy
scoreboard players set options timeLimit 1

scoreboard objectives add usePoints dummy
scoreboard players set options usePoints 1

scoreboard objectives add setLives dummy
scoreboard players set options setLives 0

scoreboard objectives add randTeams dummy
scoreboard players set options randTeams 1

# Create lobby
place template teambattle:lobby ~ ~30 ~
setworldspawn ~7 ~31 ~19
tp @a ~7 ~31 ~19