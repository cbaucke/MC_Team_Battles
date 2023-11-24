# Executes when the time limit (if enabled) is reached
scoreboard players set global suddenDeath 1

# Make sure lives system is turned on
scoreboard players set options setLives 1

# Make sure players dont get points for triggering the enter the end achievement
scoreboard players set global end 1

playsound minecraft:entity.blaze.death master @a ~ ~ ~ 16 1 1
title @a subtitle {"text":"Kill the dragon or be the last team standing!","color":"white"}
title @a title {"text":"Sudden Death","color":"red"}

scoreboard players set @a Lives 0
effect give @a minecraft:saturation 10 9 true
effect give @a minecraft:instant_health 10 9 true
effect give @a minecraft:resistance 10 4 true
effect give @a minecraft:invisibility 10 1 true
effect give @a minecraft:fire_resistance 10 1 true
effect give @a minecraft:slow_falling 10 1 true

# Only tp players not in the end already
execute in the_end run tp @a 0 80 0