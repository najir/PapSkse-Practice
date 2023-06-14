Scriptname GSQGhostEffectScript extends ActiveMagicEffect  
import game
import utility
import debug
 
Actor mySelf
 
Event OnEffectStart(Actor target, Actor caster)
		wait(1); Wait 1 Seconds real time
		target.PlaceAtMe(GetFormFromFile(0x0007CD55, "Skyrim.ESM"));Place Summon FX at dead NPC
		target.Resurrect() ;Resurrect Dead NPC
EndEvent