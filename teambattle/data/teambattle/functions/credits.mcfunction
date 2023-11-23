# Credits
# Display match time
title @a subtitle [{"score":{"name":"global","objective":"timeHrs"},"color":"white"},{"text":" Hours, ","color":"white"},{"score":{"name":"global","objective":"timeMins"},"color":"white"},{"text":" Minutes","color":"white"}]
title @a title {"text":"Match Time","color":"white"}

# Schedule individual credit screens (need to be delayed or else only one title will ever show)
schedule function teambattle:creditspresenting 5.5s
schedule function teambattle:creditsmostkills 11s
schedule function teambattle:creditsmostdeaths 16.5s
schedule function teambattle:creditsmostmobkills 22s
schedule function teambattle:creditsmostdiamonds 27.5s
schedule function teambattle:creditsmostenchants 33s
schedule function teambattle:creditsmostsneak 38.5s
schedule function teambattle:creditsmostran 44s
schedule function teambattle:creditsthanks 49.5s