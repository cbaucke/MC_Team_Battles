# Give Gold players with no lives 1 life when the pink leader dies

execute as @a[team=Gold, tag=NoLives] run function teambattle:respawn/spawnrand
execute as @a[team=Gold, tag=NoLives] run tag @s remove NoLives