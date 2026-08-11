---
-- @submodule Noble.Transition

class("DipToBlack", nil, Noble.Transition).extends(Noble.Transition.DipTile)
local transition = Noble.Transition.DipToBlack
transition.name = "Dip to Black"

--- Fade to black, then to the next scene.
-- NOTE: The `tilePattern` property is locked.
-- @see Noble.Transition.DipTile.defaultProperties
-- @table Noble.Transition.DipToBlack.defaultProperties

transition.tilePattern = Graphics.image.new(8, 8, Graphics.kColorBlack)

function transition:setProperties(__arguments)
	transition.super.setProperties(self, __arguments)
	self.tilePattern = transition.tilePattern
	self.x = 0
	self.y = 0
end