Scriptname ApplicationEffectScript extends ActiveMagicEffect  

Spell Property GSQMonitorAbility Auto

Event OnEffectStart(Actor target, Actor caster)
    target.AddSpell(GSQMonitorAbility)
EndEvent
