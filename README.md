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

## Level Design Tutorial 3/10
Creationkit.com tutorial for developing 3d level spaces and new interactable cells. 
- Duplicated and created a custom interior cell based on AAAMarkers
- Custom dungeon using existing layout kits
    - Basic transitions between kits
- Spell implemented with cast script for teleporting to new cell

## Dynamic Activating Script
Following a creationkit script tutorial. Creates an aoe effect, when a target is focused with a spell and takes damage it sends a message to the debug console for the player to see
- Quest and Alias setup for player references
- Script via spell cloak
    - Activates near the player based on various conditions
    - Post messages and data to the debug console based on those conditions
    - Provides info after player attacks
- Script with spell activation on target, through our cloak spell
    - Saves target information and updates it for console posting
- Includes various state checks and conditions to fix bugs and optimize scripts
- Global variable set in engine to disable/enable script through console commands

## MultiThreaded script
Using a creationkit.com tutorial on creating multi-threaded scripts to potentially improve performance and speed of scripts.
- Creating a spell that spawns a small army of guards at the players location
    - This spell is a script based activation
    - Implements an Asnyc function for moving the actors, allowing for multithreading
    - Clears and deleteds created guards after duration of spell
    - based on futures(similar to promises it seems like)
- Script details:
    - Create a thread manager to handle the delegation of calls, unlocking of threads, and warnings of broken threads.
    - Individual threads will process neccessary properties to let the manager know when it has completed it's task or if it is still under load, allowing the manager to keep track of the threads process.
    - Data will be sent back to the manager and event load via a "Future" which is an object reference stored within an empty cell in the game world. This future will return empty until the thread has completed. Allowing the manager to send data back when completed or have the event wait for completion.
        - This acts like promises, continuing calls and other scripts once a future has returned data but allowing other processes to run in parallel unless it requires information from that promise.

## Lingering Spirits
Based off of an example script for resurection, instead spawns ghost of killed enemy after specified time based on chance and once.
- Quest activated cloak spell to attach script to nearby NPC's in cell
    - Reactivation on game load
    - brawl bug fix
- Cloak script adds spell, effect, and script to npc's
- Checks for NPC dead and a random 3% chance to activate spell effect
    - If activated, spell turns the NPC into a ghost via ghostdefaultscript
    - plays animation and resurrects enemy on location
    - waits 32 in-game hours before resurrecting the npc
- Originally wrote entirely in cloak script, but found conditions of effect activation easier.
* Need to create a saveable state to force only one respawn event
* Needs to be tested much more before posting on nexus



# Build
    Windows 11
    SSE Creation Kit
    Creation Kit Fixes + Update + UnoPatch
    VSCode
    Various dependencies based on specific project, will be posted in their info sections
