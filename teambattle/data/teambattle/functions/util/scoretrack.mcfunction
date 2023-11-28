# Calculates points/achievements - loops every tick

# Make everyone join the default team before teams are assigned
team join Teamless @a[team=]
scoreboard players set @a[team=Teamless] Deaths 0

# Add Dead tag to dead players for respawn mechanic
tag @a[scores={Deaths=1..}] add Dead

# Gold points

# Add 200 points per player kill
scoreboard players set Gold temp_calc 0
scoreboard players operation Gold temp_calc += @a[team=Gold] pkill
scoreboard players operation Gold temp_calc *= constant twoHundred
scoreboard players operation Gold score += Gold temp_calc

# Give 500 points/lives to dead players for Pink leader death
execute if score @p[team=Pink, tag=Leader] Deaths > constant zero if score @p[team=Pink, tag=Leader] hasDied matches 0 if score Gold temp_calc > constant zero run scoreboard players operation Gold score += constant threeHundred
execute if score @p[team=Pink, tag=Leader] Deaths > constant zero if score @p[team=Pink, tag=Leader] hasDied matches 0 if score Gold temp_calc matches 0 run scoreboard players operation Gold score += constant fiveHundred
execute if score @p[team=Pink, tag=Leader] Deaths > constant zero if score @p[team=Pink, tag=Leader] hasDied matches 0 run function teambattle:respawn/addlivesgold
execute if score @p[team=Pink, tag=Leader] Deaths > constant zero if score @p[team=Pink, tag=Leader] hasDied matches 0 run tellraw @a [{"text":"The "},{"text":"Pink","color":"light_purple","bold":true},{"text":" leader has died!"}]
execute if score @p[team=Pink, tag=Leader] Deaths > constant zero run scoreboard players set @p[team=Pink, tag=Leader] hasDied 1
scoreboard players set @a[team=Pink] Deaths 0

# Subtract 10 points per player kill to cancel out the 10 gained from totalKills objective
scoreboard players set Gold temp_calc 0
scoreboard players operation Gold temp_calc += @a[team=Gold] pkill
scoreboard players operation Gold temp_calc *= constant ten
scoreboard players operation Gold score -= Gold temp_calc
scoreboard players set @a[team=Gold] pkill 0

# Add 10 points per mob kill
scoreboard players set Gold temp_calc 0
scoreboard players operation Gold temp_calc += @a[team=Gold] totalKills
scoreboard players operation Gold temp_calc *= constant ten
scoreboard players operation Gold score += Gold temp_calc
scoreboard players set @a[team=Gold] totalKills 0

# Add 50 points per diamond
scoreboard players set Gold temp_calc 0
scoreboard players operation Gold temp_calc += @a[team=Gold] MD
scoreboard players operation Gold temp_calc += @a[team=Gold] altMD
scoreboard players operation Gold temp_calc *= constant fifty
scoreboard players operation Gold score += Gold temp_calc
scoreboard players set @a[team=Gold] MD 0
scoreboard players set @a[team=Gold] altMD 0

# Add 1 point per coal
scoreboard players set Gold temp_calc 0
scoreboard players operation Gold temp_calc += @a[team=Gold] coal
scoreboard players operation Gold temp_calc += @a[team=Gold] altCoal
scoreboard players operation Gold temp_calc *= constant one
scoreboard players operation Gold score += Gold temp_calc
scoreboard players set @a[team=Gold] coal 0
scoreboard players set @a[team=Gold] altCoal 0

# Add 2 points per iron
scoreboard players set Gold temp_calc 0
scoreboard players operation Gold temp_calc += @a[team=Gold] iron
scoreboard players operation Gold temp_calc += @a[team=Gold] altIron
scoreboard players operation Gold temp_calc *= constant two
scoreboard players operation Gold score += Gold temp_calc
scoreboard players set @a[team=Gold] iron 0
scoreboard players set @a[team=Gold] altIron 0

# Add 20 points per gold
scoreboard players set Gold temp_calc 0
scoreboard players operation Gold temp_calc += @a[team=Gold] gold
scoreboard players operation Gold temp_calc += @a[team=Gold] altGold
scoreboard players operation Gold temp_calc *= constant twenty
scoreboard players operation Gold score += Gold temp_calc
scoreboard players set @a[team=Gold] gold 0
scoreboard players set @a[team=Gold] altGold 0

# Add one point per nether gold ore
scoreboard players set Gold temp_calc 0
scoreboard players operation Gold temp_calc += @a[team=Gold] netherGold
scoreboard players operation Gold temp_calc *= constant one
scoreboard players operation Gold score += Gold temp_calc
scoreboard players set @a[team=Gold] netherGold 0

# Add 40 points per lapis
scoreboard players set Gold temp_calc 0
scoreboard players operation Gold temp_calc += @a[team=Gold] lapis
scoreboard players operation Gold temp_calc += @a[team=Gold] altLapis
scoreboard players operation Gold temp_calc *= constant forty
scoreboard players operation Gold score += Gold temp_calc
scoreboard players set @a[team=Gold] lapis 0
scoreboard players set @a[team=Gold] altLapis 0

# Add 5 points per redstone
scoreboard players set Gold temp_calc 0
scoreboard players operation Gold temp_calc += @a[team=Gold] redstone
scoreboard players operation Gold temp_calc += @a[team=Gold] altRedstone
scoreboard players operation Gold temp_calc *= constant five
scoreboard players operation Gold score += Gold temp_calc
scoreboard players set @a[team=Gold] redstone 0
scoreboard players set @a[team=Gold] altRedstone 0

# Add 40 points per emerald
scoreboard players set Gold temp_calc 0
scoreboard players operation Gold temp_calc += @a[team=Gold] emerald
scoreboard players operation Gold temp_calc += @a[team=Gold] altEmerald
scoreboard players operation Gold temp_calc *= constant forty
scoreboard players operation Gold score += Gold temp_calc
scoreboard players set @a[team=Gold] emerald 0
scoreboard players set @a[team=Gold] altEmerald 0

# Add 2 points per quartz
scoreboard players set Gold temp_calc 0
scoreboard players operation Gold temp_calc += @a[team=Gold] quartz
scoreboard players operation Gold temp_calc *= constant two
scoreboard players operation Gold score += Gold temp_calc
scoreboard players set @a[team=Gold] quartz 0

# Add 50 points per netherite
scoreboard players set Gold temp_calc 0
scoreboard players operation Gold temp_calc += @a[team=Gold] netherite
scoreboard players operation Gold temp_calc *= constant fifty
scoreboard players operation Gold score += Gold temp_calc
scoreboard players set @a[team=Gold] netherite 0

# Gold achievements
execute if entity @a[advancements={minecraft:story/enter_the_nether=true}, team=Gold] if score global nether matches 0 run function teambattle:achievements/nethergold
execute if entity @a[advancements={minecraft:story/enter_the_end=true}, team=Gold] if score global end matches 0 run function teambattle:achievements/endgold
execute if entity @a[advancements={minecraft:end/kill_dragon=true}, team=Gold] if score global gameover matches 0 run function teambattle:achievements/gameovergold
execute if entity @a[advancements={minecraft:nether/brew_potion=true}, team=Gold] if score global potion matches 0 run function teambattle:achievements/potiongold
execute if entity @a[advancements={minecraft:story/enchant_item=true}, team=Gold] if score global enchant matches 0 run function teambattle:achievements/enchantgold
execute if entity @a[advancements={minecraft:nether/find_fortress=true}, team=Gold] if score global fortress matches 0 run function teambattle:achievements/fortressgold


# Pink points

# Add 200 points per player kill
scoreboard players set Pink temp_calc 0
scoreboard players operation Pink temp_calc += @a[team=Pink] pkill
scoreboard players operation Pink temp_calc *= constant twoHundred
scoreboard players operation Pink score += Pink temp_calc

# Give 500 points/lives to dead players for Gold leader death
execute if score @p[team=Gold, tag=Leader] Deaths > constant zero if score @p[team=Gold, tag=Leader] hasDied matches 0 if score Pink temp_calc > constant zero run scoreboard players operation Pink score += constant threeHundred
execute if score @p[team=Gold, tag=Leader] Deaths > constant zero if score @p[team=Gold, tag=Leader] hasDied matches 0 if score Pink temp_calc > matches 0 run scoreboard players operation Pink score += constant fiveHundred
execute if score @p[team=Gold, tag=Leader] Deaths > constant zero if score @p[team=Gold, tag=Leader] hasDied matches 0 run function teambattle:respawn/addlivespink
execute if score @p[team=Gold, tag=Leader] Deaths > constant zero if score @p[team=Gold, tag=Leader] hasDied matches 0 run tellraw @a [{"text":"The "},{"text":"Gold","color":"gold","bold":true},{"text":" leader has died!"}]
execute if score @p[team=Gold, tag=Leader] Deaths > constant zero run scoreboard players set @p[team=Gold, tag=Leader] hasDied 1
scoreboard players set @a[team=Gold] Deaths 0

# Subtract 10 points per player kill to cancel out the 10 gained from totalKills objective
scoreboard players set Pink temp_calc 0
scoreboard players operation Pink temp_calc += @a[team=Pink] pkill
scoreboard players operation Pink temp_calc *= constant ten
scoreboard players operation Pink score -= Pink temp_calc
scoreboard players set @a[team=Pink] pkill 0

# Add 10 points per mob kill
scoreboard players set Pink temp_calc 0
scoreboard players operation Pink temp_calc += @a[team=Pink] totalKills
scoreboard players operation Pink temp_calc *= constant ten
scoreboard players operation Pink score += Pink temp_calc
scoreboard players set @a[team=Pink] totalKills 0

# Add 50 points per diamond
scoreboard players set Pink temp_calc 0
scoreboard players operation Pink temp_calc += @a[team=Pink] MD
scoreboard players operation Pink temp_calc += @a[team=Pink] altMD
scoreboard players operation Pink temp_calc *= constant fifty
scoreboard players operation Pink score += Pink temp_calc
scoreboard players set @a[team=Pink] MD 0
scoreboard players set @a[team=Pink] altMD 0

# Add 1 point per coal
scoreboard players set Pink temp_calc 0
scoreboard players operation Pink temp_calc += @a[team=Pink] coal
scoreboard players operation Pink temp_calc += @a[team=Pink] altCoal
scoreboard players operation Pink temp_calc *= constant one
scoreboard players operation Pink score += Pink temp_calc
scoreboard players set @a[team=Pink] coal 0
scoreboard players set @a[team=Pink] altCoal 0

# Add 2 points per iron
scoreboard players set Pink temp_calc 0
scoreboard players operation Pink temp_calc += @a[team=Pink] iron
scoreboard players operation Pink temp_calc += @a[team=Pink] altIron
scoreboard players operation Pink temp_calc *= constant two
scoreboard players operation Pink score += Pink temp_calc
scoreboard players set @a[team=Pink] iron 0
scoreboard players set @a[team=Pink] altIron 0

# Add 20 points per gold
scoreboard players set Pink temp_calc 0
scoreboard players operation Pink temp_calc += @a[team=Pink] gold
scoreboard players operation Pink temp_calc += @a[team=Pink] altGold
scoreboard players operation Pink temp_calc *= constant twenty
scoreboard players operation Pink score += Pink temp_calc
scoreboard players set @a[team=Pink] gold 0
scoreboard players set @a[team=Pink] altGold 0

# Add 1 point per nether gold ore
scoreboard players set Pink temp_calc 0
scoreboard players operation Pink temp_calc += @a[team=Pink] netherGold
scoreboard players operation Pink temp_calc *= constant one
scoreboard players operation Pink score += Pink temp_calc
scoreboard players set @a[team=Pink] netherGold 0

# Add 40 points per lapis
scoreboard players set Pink temp_calc 0
scoreboard players operation Pink temp_calc += @a[team=Pink] lapis
scoreboard players operation Pink temp_calc += @a[team=Pink] altLapis
scoreboard players operation Pink temp_calc *= constant forty
scoreboard players operation Pink score += Pink temp_calc
scoreboard players set @a[team=Pink] lapis 0
scoreboard players set @a[team=Pink] altLapis 0

# Add 5 points per redstone
scoreboard players set Pink temp_calc 0
scoreboard players operation Pink temp_calc += @a[team=Pink] redstone
scoreboard players operation Pink temp_calc += @a[team=Pink] altRedstone
scoreboard players operation Pink temp_calc *= constant five
scoreboard players operation Pink score += Pink temp_calc
scoreboard players set @a[team=Pink] redstone 0
scoreboard players set @a[team=Pink] altRedstone 0

# Add 40 points per emerald
scoreboard players set Pink temp_calc 0
scoreboard players operation Pink temp_calc += @a[team=Pink] emerald
scoreboard players operation Pink temp_calc += @a[team=Pink] altEmerald
scoreboard players operation Pink temp_calc *= constant 40
scoreboard players operation Pink score += Pink temp_calc
scoreboard players set @a[team=Pink] emerald 0
scoreboard players set @a[team=Pink] altEmerald 0

# Add 2 points per quartz
scoreboard players set Pink temp_calc 0
scoreboard players operation Pink temp_calc += @a[team=Pink] quartz
scoreboard players operation Pink temp_calc *= constant two
scoreboard players operation Pink score += Pink temp_calc
scoreboard players set @a[team=Pink] quartz 0

# Add 50 points per netherite
scoreboard players set Pink temp_calc 0
scoreboard players operation Pink temp_calc += @a[team=Pink] netherite
scoreboard players operation Pink temp_calc *= constant fifty
scoreboard players operation Pink score += Pink temp_calc
scoreboard players set @a[team=Pink] netherite 0

# Pink achievements
execute if entity @a[advancements={minecraft:story/enter_the_nether=true}, team=Pink] if score global nether matches 0 run function teambattle:achievements/netherpink
execute if entity @a[advancements={minecraft:story/enter_the_end=true}, team=Pink] if score global end matches 0 run function teambattle:achievements/endpink
execute if entity @a[advancements={minecraft:nether/brew_potion=true}, team=Pink] if score global potion matches 0 run function teambattle:achievements/potionpink
execute if entity @a[advancements={minecraft:story/enchant_item=true}, team=Pink] if score global enchant matches 0 run function teambattle:achievements/enchantpink
execute if entity @a[advancements={minecraft:nether/find_fortress=true}, team=Pink] if score global fortress matches 0 run function teambattle:achievements/fortresspink
execute if entity @a[advancements={minecraft:end/kill_dragon=true}, team=Pink] if score global gameover matches 0 run function teambattle:achievements/gameoverpink

# Check for sudden death squad wipe
execute if score global suddenDeath matches 1 if score global gameover matches 0 unless entity @p[team=Gold, tag=!NoLives] run function teambattle:wincons/suddendeathpink
execute if score global suddenDeath matches 1 if score global gameover matches 0 unless entity @p[team=Pink, tag=!NoLives] run function teambattle:wincons/suddendeathgold

# Check for regular squad wipe
execute if score global suddenDeath matches 0 if score global gameover matches 0 if score options setLives > constant zero if entity @p[team=Pink] unless entity @p[team=Pink, tag=!NoLives] run function teambattle:wincons/alldeadpink
execute if score global suddenDeath matches 0 if score global gameover matches 0 if score options setLives > constant zero if entity @p[team=Gold] unless entity @p[team=Gold, tag=!NoLives] run function teambattle:wincons/alldeadgold