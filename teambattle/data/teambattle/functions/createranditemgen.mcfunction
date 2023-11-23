# Create barrier
fill ~1 ~10 ~ ~-26 ~14 ~6 minecraft:barrier hollow

# Create platform
fill ~1 ~10 ~ ~-26 ~10 ~6 minecraft:bedrock
fill ~ ~11 ~5 ~-25 ~11 ~5 minecraft:bedrock

# Create glowstone (so mobs don't spawn)
fill ~ ~13 ~3 ~-25 ~13 ~3 minecraft:glowstone

# Create armor stands/command blocks
fill ~ ~11 ~2 ~-25 ~11 ~2 chain_command_block[facing=north]{Command:"setblock ~ ~ ~2 minecraft:air", auto:1b}
fill ~ ~11 ~1 ~-25 ~11 ~1 chain_command_block[facing=north]{Command:"tag @a remove RandItem", auto:1b}
summon minecraft:armor_stand ~ ~12 ~5 
setblock ~ ~11 ~3 command_block[facing=north]{Command:"give @a[tag=RandItem] minecraft:iron_ingot 8"}

summon minecraft:armor_stand ~-1 ~12 ~5 
setblock ~-1 ~11 ~3 command_block[facing=north]{Command:"give @a[tag=RandItem] minecraft:oak_wood 8"}

summon minecraft:armor_stand ~-2 ~12 ~5 
setblock ~-2 ~11 ~3 command_block[facing=north]{Command:"give @a[tag=RandItem] minecraft:bookshelf 3"}

summon minecraft:armor_stand ~-3 ~12 ~5 
setblock ~-3 ~11 ~3 command_block[facing=north]{Command:"give @a[tag=RandItem] minecraft:arrow 16"}

summon minecraft:armor_stand ~-4 ~12 ~5 
setblock ~-4 ~11 ~3 command_block[facing=north]{Command:"give @a[tag=RandItem] minecraft:axolotl_bucket 1"}

summon minecraft:armor_stand ~-5 ~12 ~5 
setblock ~-5 ~11 ~3 command_block[facing=north]{Command:"give @a[tag=RandItem] minecraft:cooked_beef 8"}

summon minecraft:armor_stand ~-6 ~12 ~5 
setblock ~-6 ~11 ~3 command_block[facing=north]{Command:"give @a[tag=RandItem] minecraft:ender_pearl 2"}

summon minecraft:armor_stand ~-7 ~12 ~5 
setblock ~-7 ~11 ~3 command_block[facing=north]{Command:"give @a[tag=RandItem] minecraft:tnt 4"}

summon minecraft:armor_stand ~-8 ~12 ~5 
setblock ~-8 ~11 ~3 command_block[facing=north]{Command:"give @a[tag=RandItem] minecraft:saddle 1"}

summon minecraft:armor_stand ~-9 ~12 ~5 
setblock ~-9 ~11 ~3 command_block[facing=north]{Command:"give @a[tag=RandItem] minecraft:torch 32"}

summon minecraft:armor_stand ~-10 ~12 ~5 
setblock ~-10 ~11 ~3 command_block[facing=north]{Command:"give @a[tag=RandItem] minecraft:diamond 2"}

summon minecraft:armor_stand ~-11 ~12 ~5 
setblock ~-11 ~11 ~3 command_block[facing=north]{Command:"give @a[tag=RandItem] minecraft:scaffolding 32"}

summon minecraft:armor_stand ~-12 ~12 ~5 
setblock ~-12 ~11 ~3 command_block[facing=north]{Command:"give @a[tag=RandItem] minecraft:crossbow 1"}

summon minecraft:armor_stand ~-13 ~12 ~5 
setblock ~-13 ~11 ~3 command_block[facing=north]{Command:"give @a[tag=RandItem] minecraft:emerald 6"}

summon minecraft:armor_stand ~-14 ~12 ~5 
setblock ~-14 ~11 ~3 command_block[facing=north]{Command:"give @a[tag=RandItem] minecraft:turtle_helmet 1"}

summon minecraft:armor_stand ~-15 ~12 ~5 
setblock ~-15 ~11 ~3 command_block[facing=north]{Command:"give @a[tag=RandItem] minecraft:coal 12"}

summon minecraft:armor_stand ~-16 ~12 ~5 
setblock ~-16 ~11 ~3 command_block[facing=north]{Command:"give @a[tag=RandItem] minecraft:string 10"}

summon minecraft:armor_stand ~-17 ~12 ~5 
setblock ~-17 ~11 ~3 command_block[facing=north]{Command:"give @a[tag=RandItem] minecraft:flint_and_steel 1"}

summon minecraft:armor_stand ~-18 ~12 ~5 
setblock ~-18 ~11 ~3 command_block[facing=north]{Command:"give @a[tag=RandItem] minecraft:slime_ball 12"}

summon minecraft:armor_stand ~-19 ~12 ~5 
setblock ~-19 ~11 ~3 command_block[facing=north]{Command:"give @a[tag=RandItem] minecraft:shield 1"}

summon minecraft:armor_stand ~-20 ~12 ~5 
setblock ~-20 ~11 ~3 command_block[facing=north]{Command:"give @a[tag=RandItem] minecraft:wolf_spawn_egg 2"}

summon minecraft:armor_stand ~-21 ~12 ~5 
setblock ~-21 ~11 ~3 command_block[facing=north]{Command:"give @a[tag=RandItem] minecraft:experience_bottle 8"}

summon minecraft:armor_stand ~-22 ~12 ~5 
setblock ~-22 ~11 ~3 command_block[facing=north]{Command:"give @a[tag=RandItem] minecraft:cobblestone 64"}

summon minecraft:armor_stand ~-23 ~12 ~5 
setblock ~-23 ~11 ~3 command_block[facing=north]{Command:"give @a[tag=RandItem] minecraft:hay_block 6"}

summon minecraft:armor_stand ~-24 ~12 ~5 
setblock ~-24 ~11 ~3 command_block[facing=north]{Command:"give @a[tag=RandItem] minecraft:golden_apple 1"}

summon minecraft:armor_stand ~-25 ~12 ~5 
setblock ~-25 ~11 ~3 command_block[facing=north]{Command:"give @a[tag=RandItem] minecraft:white_shulker_box 1"}