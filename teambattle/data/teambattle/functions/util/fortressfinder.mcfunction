# Announces nearest fortress to each team (if players are in nether)

execute as @a[team=Gold] at @s store result score @s fortressDistance run locate structure fortress
scoreboard players set $lowest fortressDistance 9999
execute as @a[team=Gold] if score @s fortressDistance > constant zero run scoreboard players operation $lowest fortressDistance < @s fortressDistance
execute as @a[team=Gold] if score @s fortressDistance = $lowest fortressDistance run tag @s add closestFortress
execute if score @p[team=Gold, tag=closestFortress] fortressDistance > constant zero run tellraw @a[team=Gold] [{"text":"The nearest fortress is ","color":"white"},{"score":{"name":"@p[team=Gold, tag=closestFortress]","objective":"fortressDistance"},"color":"white"},{"text":" blocks away from ","color":"white"},{"selector":"@p[team=Gold, tag=closestFortress]"}]

execute as @a[team=Pink] at @s store result score @s fortressDistance run locate structure fortress
scoreboard players set $lowest fortressDistance 9999
execute as @a[team=Pink] if score @s fortressDistance > constant zero run scoreboard players operation $lowest fortressDistance < @s fortressDistance
execute as @a[team=Pink] if score @s fortressDistance = $lowest fortressDistance run tag @s add closestFortress
execute if score @p[team=Pink, tag=closestFortress] fortressDistance > constant zero run tellraw @a[team=Pink] [{"text":"The nearest fortress is ","color":"white"},{"score":{"name":"@p[team=Pink, tag=closestFortress]","objective":"fortressDistance"},"color":"white"},{"text":" blocks away from ","color":"white"},{"selector":"@p[team=Pink, tag=closestFortress]"}]

tag @a remove closestFortress

schedule function teambattle:util/fortressfinder 60s