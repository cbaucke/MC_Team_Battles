# Give Gold players with no lives 1 life when the pink leader dies

execute as @a[team=Gold, tag=NoLives] run gamemode survival @s
execute as @a[team=Gold, tag=NoLives] run function teambattle:respawn/spawnrand
execute as @a[team=Gold, tag=NoLives] run tag @s remove Dead
execute as @a[team=Gold, tag=NoLives] run tag @s remove LifeRemoved
execute as @a[team=Gold, tag=NoLives] run tag @s remove Moved
execute as @a[team=Gold, tag=NoLives] run tag @s remove NoLives