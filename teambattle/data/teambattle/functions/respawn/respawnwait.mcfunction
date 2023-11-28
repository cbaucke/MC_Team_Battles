execute if entity @s[team=Gold] run tp @s ~-14 ~-1 ~
execute if entity @s[team=Pink] run tp @s ~-6 ~-1 ~
execute as @s run execute positioned as @s run function teambattle:respawn/wait5sec
