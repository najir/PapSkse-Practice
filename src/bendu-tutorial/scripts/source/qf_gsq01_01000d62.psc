;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 6
Scriptname QF_GSQ01_01000D62 Extends Quest Hidden

;BEGIN ALIAS PROPERTY Amulet
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Amulet Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Thief
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Thief Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Bendu
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Bendu Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
SetObjectiveCompleted(10)
SetObjectiveDisplayed(20)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
SetObjectiveDisplayed(10)
DungeonMarker.AddToMap()
Alias_Thief.GetReference().Enable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
SetObjectiveCompleted(30)
Alias_Bendu.GetReference().AddItem(Alias_Amulet.GetReference())
Game.GetPlayer().AddItem(Gold001, Alias_Amulet.GetReference().GetGoldValue()*2)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
if(!GetStageDone(20))
    SetObjectiveDisplayed(10, False)
endif

SetObjectiveCompleted(20)
SetObjectiveDisplayed(30)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ObjectReference Property DungeonMarker  Auto  

MiscObject Property Gold001  Auto  
