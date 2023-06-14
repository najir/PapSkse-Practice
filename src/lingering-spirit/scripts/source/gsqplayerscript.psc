Scriptname GSQPlayerScript extends ReferenceAlias  
SPELL Property GSQGhostCloakSpell  Auto  

Actor Property PlayerRef  Auto  

Event OnInit()
	RegisterForSingleUpdate(1)
EndEvent

Event OnUpdate()
	PlayerRef.AddSpell(GSQGhostCloakSpell, false)
	; How long you would like to keep the cloak active
	Utility.Wait(1)
	PlayerRef.RemoveSpell(GSQGhostCloakSpell)
	; How long until the cloak activates again
	RegisterForSingleUpdate(4)
EndEvent
