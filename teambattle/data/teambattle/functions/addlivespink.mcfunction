# Give Pink players with no lives 1 life when the gold leader dies

execute as @a[team=Pink, tag=NoLives] run function teambattle:spawnrand
execute as @a[team=Pink, tag=NoLives] run tag @s remove NoLives