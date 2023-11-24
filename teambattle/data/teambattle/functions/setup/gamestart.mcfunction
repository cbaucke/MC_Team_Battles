playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 1 1 1
title @a times 35 50 35
title @a subtitle {"text":"Be the team with the most points!","color":"red"}
title @a title {"text":"Let the Games Begin!","color":"blue"}

# Give starting items/effects
give @a minecraft:stone_sword 1
give @a minecraft:stone_pickaxe 1
give @a minecraft:stone_axe 1
give @a minecraft:stone_shovel 1
give @a minecraft:cooked_beef 15
give @a minecraft:red_bed 1
effect give @a minecraft:invisibility 15 1 true
effect give @a minecraft:slow_falling 5 2 true
effect give @a minecraft:saturation 1 9 true

# Teleports each team to a random location around spawn
spreadplayers ~ ~ 300 700 true @a
execute at @r[team=Gold] run summon minecraft:firework_rocket ~ ~15 ~ {LifeTime:15,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;2651799],FadeColors:[I;15435844]},{Type:3,Flicker:1,Trail:1,Colors:[I;3887386],FadeColors:[I;11250603]}]}}}}
execute at @r[team=Pink] run summon minecraft:firework_rocket ~ ~15 ~ {LifeTime:15,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;2651799],FadeColors:[I;15435844]},{Type:3,Flicker:1,Trail:1,Colors:[I;3887386],FadeColors:[I;11250603]}]}}}}

# Sets world spawn to be in the spawn (and deletes grass block)
setblock ~ ~-2 ~ minecraft:air replace
setblock ~ ~-1 ~ minecraft:air replace
setworldspawn ~4 ~2 ~6

schedule function teambattle:util/5minevents 300s