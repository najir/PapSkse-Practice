Scriptname GQSPlayerAliasScript extends ReferenceAlias  

Spell Property GQSSpellCloak Auto
Actor Property Player Auto
GlobalVariable Property GSQCloakEffectOn Auto

Event OnInit()
    RegisterForSingleUpdate(1)
EndEvent

Event OnUpdate()
    if GSQCloakEffectOn.GetValue()
        Player.AddSpell(GQSSpellCloak, false)
        Utility.Wait(1)
        Player.RemoveSpell(GQSSpellCloak)
    endif
    RegisterForSingleUpdate(4)
EndEvent