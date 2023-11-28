# Sets up the world border, gamerules, fortress generation, and scoreboard for the game

# World set up
worldborder set 5376
worldborder center 0 0
gamerule doDaylightCycle true
gamerule keepInventory true
time set day
execute if score options enableWeather matches 0 run gamerule doWeatherCycle false
execute if score options enableWeather matches 1 run gamerule doWeatherCycle true
execute if score options setDifficulty matches 0 run difficulty easy
execute if score options setDifficulty matches 1 run difficulty normal
execute if score options setDifficulty matches 2 run difficulty hard
gamemode survival @a
execute in minecraft:the_nether run forceload add -64 -64 64 64
execute in minecraft:the_nether run place structure minecraft:fortress 0 60 0
execute in minecraft:the_nether run forceload remove -64 -64 64 64

# Delete lobby
execute positioned ~4 ~2 ~6 run fill ~4 ~-55 ~-7 ~-12 ~-44 ~21 minecraft:air replace

# Points system setup
scoreboard players reset @a
scoreboard players reset Pink
scoreboard players reset Gold
advancement revoke @a everything
scoreboard objectives add score dummy
scoreboard objectives add temp_calc dummy
scoreboard objectives setdisplay sidebar score
scoreboard objectives modify score displayname {"text":"Total Points","color":"yellow"}

# Objectives for points
scoreboard objectives add Deaths deathCount
scoreboard objectives add hasDied dummy
scoreboard objectives add MD minecraft.mined:minecraft.diamond_ore
scoreboard objectives add altMD minecraft.mined:minecraft.deepslate_diamond_ore
scoreboard objectives add pkill minecraft.custom:minecraft.player_kills
scoreboard objectives add totalKills totalKillCount
scoreboard objectives add coal minecraft.mined:minecraft.coal_ore
scoreboard objectives add altCoal minecraft.mined:minecraft.deepslate_coal_ore
scoreboard objectives add iron minecraft.mined:minecraft.iron_ore
scoreboard objectives add altIron minecraft.mined:minecraft.deepslate_iron_ore
scoreboard objectives add gold minecraft.mined:minecraft.gold_ore
scoreboard objectives add altGold minecraft.mined:minecraft.deepslate_gold_ore
scoreboard objectives add netherGold minecraft.mined:minecraft.nether_gold_ore
scoreboard objectives add lapis minecraft.mined:minecraft.lapis_ore
scoreboard objectives add altLapis minecraft.mined:minecraft.deepslate_lapis_ore
scoreboard objectives add redstone minecraft.mined:minecraft.redstone_ore
scoreboard objectives add altRedstone minecraft.mined:minecraft.deepslate_redstone_ore
scoreboard objectives add emerald minecraft.mined:minecraft.emerald_ore
scoreboard objectives add altEmerald minecraft.mined:minecraft.deepslate_emerald_ore
scoreboard objectives add quartz minecraft.mined:minecraft.nether_quartz_ore
scoreboard objectives add netherite minecraft.mined:minecraft.ancient_debris

# Constants
scoreboard objectives add zero dummy
scoreboard players set constant zero 0
scoreboard objectives add one dummy
scoreboard players set constant one 1
scoreboard objectives add two dummy
scoreboard players set constant two 2
scoreboard objectives add five dummy
scoreboard players set constant five 5
scoreboard objectives add nine dummy
scoreboard players set constant nine 9
scoreboard objectives add ten dummy
scoreboard players set constant ten 10
scoreboard objectives add twenty dummy
scoreboard players set constant twenty 20
scoreboard objectives add twentyFive dummy
scoreboard players set constant twentyFive 25
scoreboard objectives add thirtyFive dummy
scoreboard players set constant thirtyFive 35
scoreboard objectives add forty dummy
scoreboard players set constant forty 40
scoreboard objectives add fortyFive dummy
scoreboard players set constant fortyFive 45
scoreboard objectives add fifty dummy
scoreboard players set constant fifty 50
scoreboard objectives add sixty dummy
scoreboard players set constant sixty 60
scoreboard objectives add hundred dummy
scoreboard players set constant hundred 100
scoreboard objectives add hundredFifty dummy
scoreboard players set constant hundredFifty 150
scoreboard objectives add twoHundred dummy
scoreboard players set constant twoHundred 200
scoreboard objectives add threeHundred dummy
scoreboard players set constant threeHundred 300
scoreboard objectives add fourHundred dummy
scoreboard players set constant fourHundred 400
scoreboard objectives add fiveHundred dummy
scoreboard players set constant fiveHundred 500
scoreboard objectives add thousand dummy
scoreboard players set constant thousand 1000
scoreboard objectives add thousTwoHund dummy
scoreboard players set constant thousTwoHund 1200
scoreboard objectives add twoThousand dummy
scoreboard players set constant twoThousand 2000
scoreboard objectives add fourThousand dummy
scoreboard players set constant fourThousand 4000

# Objectives for misc. game mechanics
scoreboard objectives add fortressDistance dummy
scoreboard objectives add kitsAvailable dummy
scoreboard players set @a kitsAvailable 0
scoreboard objectives add teamRespawns dummy
scoreboard players set @a teamRespawns 0
scoreboard objectives add Lives dummy
# setLives 2 = 3 lives, setLives 1 = 0 lives (hardcore), setLives 0 = infinite lives (still need to set to 1 for respawns)
execute if score options setLives matches 2 run scoreboard players set @a Lives 3
execute if score options setLives matches 1 run scoreboard players set @a Lives 0
execute if score options setLives matches 0 run scoreboard players set @a Lives 1
execute if score options setLives > constant zero run scoreboard objectives setdisplay list Lives
scoreboard objectives add suddenDeath dummy
scoreboard players set global suddenDeath 0

# Objectives for game clock/end game credits
scoreboard objectives add timeMins dummy
scoreboard players set global timeMins 0
scoreboard objectives add timeHrs dummy
scoreboard players set global timeHrs 0
scoreboard objectives add temp_credits dummy
scoreboard objectives add mostDeaths deathCount
scoreboard objectives add mostKills playerKillCount
scoreboard objectives add mostMobKills totalKillCount
scoreboard objectives add mostEnchants minecraft.custom:minecraft.enchant_item
scoreboard objectives add mostDiamonds minecraft.mined:minecraft.diamond_ore
scoreboard objectives add mostAltDiamonds minecraft.mined:minecraft.deepslate_diamond_ore
scoreboard objectives add mostSneak dummy
scoreboard objectives add ticksSneaked minecraft.custom:minecraft.sneak_time
scoreboard objectives add mostRan dummy
scoreboard objectives add cmRan minecraft.custom:minecraft.sprint_one_cm

# Achievements to be tracked
scoreboard objectives add nether dummy
scoreboard players set global nether 0
scoreboard objectives add end dummy
scoreboard players set global end 0
scoreboard objectives add gameover dummy
scoreboard players set global gameover 0
scoreboard objectives add potion dummy
scoreboard players set global potion 0
scoreboard objectives add enchant dummy
scoreboard players set global enchant 0
scoreboard objectives add fortress dummy
scoreboard players set global fortress 0
scoreboard objectives add giveBlazeRods dummy
scoreboard players set global giveBlazeRods 0

# Create respawn building
place template teambattle:spawntp ~2 ~-1 ~4

# Create pink team waiting structure
place template teambattle:prespawnroom ~-4 ~ ~4

# Create gold team waiting structure
place template teambattle:prespawnroom ~-12 ~ ~4

# Create pink team respawn structure
place template teambattle:respawnpink ~-20 ~ ~3

# Create gold team respawn structure
place template teambattle:respawngold ~-28 ~ ~3

# Set up random item generator
execute positioned ~ ~ ~4 run function teambattle:setup/createranditemgen

# Teleport players
effect give @a minecraft:saturation 1 9 true
effect give @a minecraft:instant_health 5 9 true
clear @a
experience set @a 0 levels
experience set @a 0 points
tp @a[team=Gold] ~-2 ~1 ~6
tp @a[team=Pink] ~-10 ~1 ~6

# Set up out of lives structures
forceload add 0 0
place template teambattle:prespawnroom 0 120 0
place template teambattle:prespawnroom -8 120 0
forceload remove 0 0

# Announce pre-game messages and start game
title @a[team=Gold] subtitle {"text":"The game begins in 30 seconds!","color":"green"}
title @a[team=Gold] title {"text":"You're on GOLD team","color":"gold"}
title @a[team=Pink] subtitle {"text":"The game begins in 30 seconds!","color":"green"}
title @a[team=Pink] title {"text":"You're on PINK team","color":"light_purple"}
schedule function teambattle:setup/startmsg1 6s append
schedule function teambattle:setup/gamestart 30s append