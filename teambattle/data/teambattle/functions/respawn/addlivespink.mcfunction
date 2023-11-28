# Give Pink players with no lives 1 life when the gold leader dies

execute as @a[team=Pink, tag=NoLives] run gamemode survival @s
execute as @a[team=Pink, tag=NoLives] run function teambattle:respawn/spawnrand
execute as @a[team=Pink, tag=NoLives] run tag @s remove Dead
execute as @a[team=Pink, tag=NoLives] run tag @s remove LifeRemoved
execute as @a[team=Pink, tag=NoLives] run tag @s remove Moved
execute as @a[team=Pink, tag=NoLives] run tag @s remove NoLives