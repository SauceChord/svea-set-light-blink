-- Configuration
local ShiftOffset = 0.000 --export: (Seconds) Base shift offset. Use this if chaining more than 10 lights.
local DurationOn = 0.100 --export: (Seconds)
local DurationOff = 0.900 --export: (Seconds)

-- Script assumes all slots are either a light or nil
local lights = { slot1, slot2, slot3, slot4, slot5, slot6, slot7, slot8, slot9, slot10 }
local shift = ShiftOffset
for i = 1, #lights do
  local light = lights[i]
  if light then
    light.setOnBlinkingDuration(DurationOn)
    light.setOffBlinkingDuration(DurationOff)
    light.setBlinkingTimeShift(shift)
    light.setBlinkingState(true)
    light.activate()
    shift = shift + DurationOn
  end
end

-- Output shift duration if user need to chain more lights together
system.print(string.format("Total shift duration: %f seconds", shift))

unit.exit()