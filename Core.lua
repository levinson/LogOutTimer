local NAME, S = ...
local LT = LogOutTimer

local options = S.options

local frame = CreateFrame("Frame")
frame.elapsed = 0
frame.three = true
frame.two = true
frame.one = true
frame.now = true

local function OnUpdate(self, elapsed)
	self.elapsed = self.elapsed + elapsed
	if(frame.three and self.elapsed >= 0) then
		frame.three = false
		LT:nag("Log Out in 3")
	end
	if (frame.two and self.elapsed >= 1) then
		frame.two = false
		LT:nag("Log Out in 2")
	end
	if (frame.one and self.elapsed >= 2) then
		frame.one = false
		LT:nag("Log Out in 1")
	end
	if (frame.now and self.elapsed >= 3) then
		frame.now = false
		LT:nag("Log Out NOW!")
	end
end

function LT:OnEnable()
	frame.elapsed = 0
	frame:SetScript("OnUpdate", OnUpdate)
end
