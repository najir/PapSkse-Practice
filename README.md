# PapSkse-Practice
    Isaac Perks
    05/27/23

# Description
This repo serves as a place to store, update, show progress on a variety of Skyirm modding projects being used for practice and educational purposes. Project details will have their own section in this README for details. They will each have their own folder with their respective plugin file, BSA, and loose scripts to be looked over as needed. Code is written in Papyrus, and C++ for SKSE plugins, details will be specified within project sections.

## Bendu Olo Tutorial + Intermediate Tutorials
The base tutorial provided by creationkit.com.
- Created Actors Bendo Olo and lvl list thief who contains stolen item
- Quest stages with needed scripting to progress quest and show information
    - Quest Aliases, Dialogue, Object and Character scripts set up. Used to progress quest, provide information, check for conditions, adjust character responses and provide rewards.
- Quest views created with dialogue branches, scenes, info, and the scripts needed to allow progression of quests
- Created amulet with quest update scripts
All relevant papyrus scripts and edited scripts are in the script folder, or can be extracted from the BSA file.
- Added AI packages and made custom AI patrol with XMarkers
- Restructured scripts to isolate everything quest related into the quests ALIAS
- Advanced dialogue structures and set-up
    - Special topics, reset timers, combat, blocking topics
- A complex scene involving other NPC's and specific AI packages
    
## Teleport Spell
A fairly basic script based spell
- Fire and forget spell effect based off of existing spells
- Papyrus script for teleport player based on their location
- AngleZ, 100* sin(z), 100* cos(z) for location and angle parameters
- Script initialization via run once game start quest script
    - Adds spell to player character and displays a message for initialization, ends quest after



# Build
    Windows 11
    SSE Creation Kit
    Creation Kit Fixes + Update + UnoPatch
    VSCode
    Various dependencies based on specific project, will be posted in their info sections
