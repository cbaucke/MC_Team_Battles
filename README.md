# MC Team Battles

## How To Start
1. Download the "teambattle" folder and place it in your world/datapacks folder
2. Enable command blocks on your server and change the gamemode to adventure mode in the server.properties file
3. Start your server and make yourself an operator
4. Type "/function teambattle:setup/pregame" to generate the waiting lobby
5. Press the "Start Game" button in the settings room when you're ready to play

## Planned Features:
   - Tips to display throughout the game
   - Minigames and other main gamemodes to choose from in the lobby

## Changelog

### Version 1.11 - 11/28/23
   - Revamped the respawn system:
     - Enabled KeepInventory to keep players able to focus on getting to the end
     - Added a 5-second cooldown after respawning before teleporting to the respawn room
     - All players will now respawn at the respawn rooms, bed or not
     - Respawn rooms can now tp players to their beds, if they have one
     - Players who are out of lives now become spectators
   - A guaranteed nether fortress will now always spawn at (0, 0), but it won't award points
   - Increased initial spawn distance between teams
   - Various minor improvements to the code

### Version 1.10 - 11/24/23
   - Restructured datapack folder hierarchy to reduce clutter and make development easier in the future

### Version 1.9 - 8/25/23
   - Fixed bug where lives were not automatically displaying in the list scoreboard
   - Fixed bug where pink players with no lives would be teleported outside of a spawn structure
   - Fixed bug where players on both teams with no lives would respawn at the normal spawn structure
   - Fixed bug where respawning with your iron kit would also give you a stone kit
   - Fixed bug where sudden death wouldn't count players as being out of lives if unlimited lives were selected during game creation
   - Fixed bug where someone out of lives could be picked as leader
   - Fixed bug where game wouldn't check for all team members being out of lives when life system is on
   - Increased points for killing players to 200
   - Increased points for a team leader dying (to the other team or by natural causes) to 500 (note that this doesn't stack with the normal 200 per kill)
   - Sudden death now automatically ends the game, grants victory to whichever team killed the dragon or the other team
   - Added points victory for having the most points when time runs out
   - Players now receive regen once dragon is dead, avoids fringe case where the last player alive kills the dragon then gets killed after, triggering a victory for each team
   - Players who join late will now be handled (somewhat) gracefully instead of clogging up the respawn room
   - Players can now spawn on their team leader once every 5 minutes (doesn't stack over time)
   - Option to respawn on a random teammate changed to respawn on your team leader
   - Iron kits can now be redeemed when respawning on your team leader in addition to spawning randomly
   - Removed invisibility when respawning on your team leader
   - Removed 10minevents function
   - Removed redundant logic check for giving team leaders ender pearls/blaze rods

### Version 1.8 - 5/24/23
   - Added waiting lobby and match settings
   - New settings:
       - Enable/disable weather, change minecraft difficulty
       - Use points or just who kills the dragon to determine winner
       - Max match time: starts sudden death in the end if match goes too longs
       - Extra lives system: if you run out of lives, must wait for enemy team leader to die to respawn
       - Randomly select teams or choose teams manually
   - Added ability to spawn on a random teammate instead of at the world spawn once every 10 minutes
   - Fixed fortress distance being broken when not all teammates are in the nether
   - Closest nether fortress distance will now be announced every minute instead of every 5 minutes
   - Reorganized some function code to work with new settings/be more flexible to future changes
   - Added struture files to generate the lobby/new spawn buildings instead of using lots of setblock and fill commands
   - Simplified random item generator commands to use fill instead of setblock
   - Improved random item drops


### Version 1.7 - 5/17/23
   - Updated locate command syntax to work with MC 1.19 (Note that it will no longer work with pre-1.19 versions)
   - Updated constant names to all be camel case (no impact on gameplay)
   - Changed respawn function to not announce respawns
   - Significantly increased point values of story progression and beating the dragon
   - Players now start with beds
   - Decreased random respawn radius
   - Fixed bug where death counts were not reset after giving other team points
   - Fixed bug where constant fiveHundred was not initialized due to a typo
   - Fixed bug where blaze rods/ender pearls weren't being given to team leaders

### Version 1.6 - 11/30/21
   - Fixed bug where the respawn function would spread players outside the world border
   - Fixed* bug where players would respawn above the respawn building - caused by MC 1.18, needs more testing
   - Reduced duration of slow falling after game starts/respawning to 5 seconds
   - Changed blaze rods/ender pearls to only be given to teams who have entered the nether
   - Reworked points system to give points based on actual rarity of ores (now range from 1 for coal to 50 for diamonds)
   - Adjusted non-ore points to be in line with above changes (10 per mob, 100 per player, 500 per achievement, 2000 for killing the dragon)
   - Added warning upon entering the end to remind players not to kill the dragon with beds

### Version 1.5 - 10/23/21
   - Changed iron kit respawns to be available every 30 minutes (from once at 40 mins)
   - Changed blaze rods/ender pearls to be given out starting at 40 mins (instead of 45)
   - Teams will now start further away (at least 400 blocks vs 100 blocks before) to discourage rushing pvp

### Version 1.4 - 10/16/21
   - Fixed bug where the player furthest from a fortress would be announced the closest
   - Fixed potential bug with scoretrack only checking for one player on each team dying instead of all players on each team
   - Fixed bug where the "tie" function was broken due to incorrect syntax
   - Added tip for finding a fortress once a team enters the nether
   - Players will now receive a stone pickaxe and sword on game start and respawn (up from nothing and a wooden sword)
   - Players will now receive more steak when starting the game/respawning
   - Renamed datapack to "teambattle" and updated function calls accordingly
   - Updated comments in scoretrack to reduce confusion about points for player kills
   - Cleaned up code for respawn functions
   - Changed Minecraft difficulty to normal (from hard)
   - Team leaders will now receive 2 blaze rods and 1 ender pearl every 5 minutes starting at 45 minutes
   - Players can now use their full iron respawn starting at 40 minutes
   - The distance to the nearest fortress will now be announced every 5 minutes regardless of match time
