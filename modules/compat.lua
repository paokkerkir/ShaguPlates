-- Registers after the "cooldown" module so ShaguPlates' hooksecurefunc
-- (new-before-old) places our function before SetCooldown in the call chain.
-- Prevents double cooldown text when ShaguTweaks cooldown-numbers is active.
ShaguPlates:RegisterModule("cooldown_compat", "vanilla:tbc", function()
  hooksecurefunc("CooldownFrame_SetTimer", function(this, start, duration, enable)
    if ShaguTweaks and not this.pfCooldownType then
      this.pfCooldownStyleText = 0
    end
  end)
end)
