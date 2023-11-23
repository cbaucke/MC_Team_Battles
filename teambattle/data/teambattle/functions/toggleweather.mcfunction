scoreboard players set options changed 0

execute if score options enableWeather matches 0 run tellraw @a {"text":"Weather system (rain, snow, thunder) enabled."}
execute if score options enableWeather matches 0 run scoreboard players set options changed 1
execute if score options enableWeather matches 0 run scoreboard players set options enableWeather 1

execute if score options enableWeather matches 1 if score options changed matches 0 run tellraw @a {"text":"Weather system disabled."}
execute if score options enableWeather matches 1 if score options changed matches 0 run scoreboard players set options enableWeather 0