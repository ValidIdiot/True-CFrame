local tcf = {}

function tcf.new(pos: Vector3, rot: Vector3)
	--[[
		CFrame.new needs CFrame.Angles for it's rotation to function as expected
		@param pos Vector3
		@param rot Vector3
		@return CFrame
	]]
	return CFrame.new(pos) * CFrame.Angles(math.rad(rot.X), math.rad(rot.Y), math.rad(rot.Z))
end

function tcf.oneShot(x:number,y:number,z:number,rx:number,ry:number,rz:number)
	--[[
		See tcf.new
		@param x number
		@param y number
		@param z number
		@param rx number
		@param ry number
		@param rz number
		@return CFrame
	]]
	return CFrame.new(x,y,z) * CFrame.Angles(math.rad(rx), math.rad(ry), math.rad(rz))
end

function tcf.ezPaste(pos: { number }, rot: { number })
	--[[
		Simply allows you to enter 2 tables containing number values representing xyz and rxryrz
		@param pos {number}
		@param rot {number}
		@return CFrame
	]]
	return CFrame.new(pos[1], pos[2], pos[3]) * CFrame.Angles(math.rad(rot[1]), math.rad(rot[2]), math.rad(rot[3]))
end

-- Use Responsibly!

return tcf
