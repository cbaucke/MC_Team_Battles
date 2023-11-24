# Controls the End-Game Credits
# Display match time
title @a subtitle [{"score":{"name":"global","objective":"timeHrs"},"color":"white"},{"text":" Hours, ","color":"white"},{"score":{"name":"global","objective":"timeMins"},"color":"white"},{"text":" Minutes","color":"white"}]
title @a title {"text":"Match Time","color":"white"}

# Schedule individual credit screens (need to be delayed or else only one title will ever show)
schedule function teambattle:credits/creditspresenting 5.5s
schedule function teambattle:credits/creditsmostkills 11s
schedule function teambattle:credits/creditsmostdeaths 16.5s
schedule function teambattle:credits/creditsmostmobkills 22s
schedule function teambattle:credits/creditsmostdiamonds 27.5s
schedule function teambattle:credits/creditsmostenchants 33s
schedule function teambattle:credits/creditsmostsneak 38.5s
schedule function teambattle:credits/creditsmostran 44s
schedule function teambattle:credits/creditsthanks 49.5s