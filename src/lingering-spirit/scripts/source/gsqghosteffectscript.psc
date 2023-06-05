Scriptname GSQGhostEffectScript extends ActiveMagicEffect  
import game
import utility
import debug
 
Actor mySelf
 
Event OnEffectStart(Actor killer)
		wait(1); Wait 1 Seconds real time
		Self.PlaceAtMe(GetFormFromFile(0x0007CD55, "Skyrim.ESM"));Place Summon FX at dead NPC
		Self.Resurrect() ;Resurrect Dead NPC
EndEvent