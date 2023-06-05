Scriptname GSQGhostApplyScript extends ActiveMagicEffect  

Spell Property GSQGhostSpell Auto

Event OnEffectStart(Actor target, Actor caster)
    target.AddSpell(GSQGhostSpell)
EndEvent
