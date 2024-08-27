# True CFrame
This LuaU module is made to make CFrames in Roblox Studio easier to work with.

## The Problem with `CFrame.new()`
When you use `CFrame.new()`, you have many overloads to use. This module's main focus is `CFrame.new(pos: Vector3, lookAt: Vector3)`, because it has an annoying problem.
You see, whenever you use this function, the rotation will not come out as expected, often even facing the opposing direction. The solution is to multiply `CFrame.new()` by `CFrame.Angles()`. Here is an example:

*(**NOTE:** CFrame.Angles ONLY takes radians, so you must use `math.rad()` for all parameters)*

```luau
local pos = Vector3.new(0, 0, 10)
local rotation =  CFrame.Angles(math.rad(76.3), math.rad(85.6), 0) -- 0 does not need to be converted to radians

local fullCFrame = CFrame.new(pos) * rotation
```

Pretty unnecessarily complicated, right? Well, I've got you covered.

## The solution
Using True CFrame does all this for you, so you could just put in two Vector3 values and be good to go. Take a look at the way it works:

```luau
-- DECLARATIONS --
local tcf = require(game.ReplicatedStorage.TrueCFrame) -- Put the module in RS
local pos = Vector3.new(0, 0, 10) -- Desired Position
local rotation = Vector3.new(76.3, 85.6, 0) -- Desired Orientation

-- OPTIONS --
tcf.new(pos, rotation) -- Main Usage, equivalent to `CFrame.new(pos) * CFrame.Angles(math.rad(76.3), math.rad(85.6), 0)`
tcf.oneShot(0, 0, 10, 76.3, 85.6, 0) -- Allows you to enter each parameter, would not recommend as you can just use `tcf.new()`
tcf.ezPaste({0, 0, 10}, {76.3, 85.6, 0}) -- Allows you to directly paste a CFrame value of an object, very quick
-- All of these are the same values, just different methods
```

Use Responsibly!
