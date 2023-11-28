# Spawn player on their bed
execute unless data entity @s SpawnX run tellraw @s "No bed found! Choose another spawn option."
execute unless data entity @s SpawnX run return 0

# TP to bed
summon minecraft:armor_stand ~ ~4 ~ {Tags:["BedTP"]}
execute as @e[tag=BedTP] run tag @p add BedTPTarget
execute as @e[tag=BedTP] run execute store result entity @s Pos[0] double 1 run data get entity @p SpawnX 1
execute as @e[tag=BedTP] run execute store result entity @s Pos[1] double 1 run data get entity @p SpawnY 1
execute as @e[tag=BedTP] run execute store result entity @s Pos[2] double 1 run data get entity @p SpawnZ 1
execute as @e[tag=BedTP] run tp @p[tag=BedTPTarget] @s
execute as @e[tag=BedTP] run tag @p[tag=BedTPTarget] remove BedTPTarget
execute as @e[tag=BedTP] run kill @s

# Remove dead tags
tag @s remove Dead
tag @s remove LifeRemoved
tag @s remove Moved