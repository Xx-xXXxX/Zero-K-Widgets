-- ---@diagnostic disable: missing-return
---@meta Spring

Spring={}
---@class unitId : integer
---@class unitDefId:integer

---@class playerId:integer
---@class teamId:integer
---@class allyteamId:integer

---@class timeSec:number

---@class frame:integer
---@operator div(framePerSec):timeSec
---@class framePerSec:integer
---@operator mul(timeSec):frame

---@class WldDist:number
---@operator div(timeSec):WldSpeed
---@class WldxPos:number
---@operator div(timeSec):WldxVel
---@class WldyPos:number
---@operator div(timeSec):WldyVel
---@class WldzPos:number
---@operator div(timeSec):WldzVel

---@class WldSpeed:number
---@operator mul(timeSec):WldDist
---@class WldxVel:number
---@operator mul(timeSec):WldxPos
---@class WldyVel:number
---@operator mul(timeSec):WldyPos
---@class WldzVel:number
---@operator mul(timeSec):WldzPos

--- show message to console. `"game_message: ".. msg` to show `msg` at chat (client only)
---@param msg string message to be shown
function Spring.Echo(msg)end


---@param unitId unitId
---@return unitDefId
---@nodiscard
function Spring.GetUnitDefID(unitId)end

---check whether unitId is valid
---@param unitId unitId
---@return boolean
function Spring.ValidUnitID(unitId)end

---check whether unit is dead
---@param unitId unitId
---@return boolean
function Spring.GetUnitIsDead(unitId)end

---check whether unit belongs to you
---@param unitId unitId
function Spring.IsUnitAllied(unitId)end

--- return unit's base position (bottom),<br>
--- unit's middle position with returnMidPos<br>
--- unit's aim position with returnAimPos<br>
--- extra values are pushed behind<br>
--- eg `posx,posy,posz,aimx,aimy,aimz=spGetUnitPosition(unitId,false,true)`
---@param unitId unitId
---@return WldxPos
---@return WldyPos
---@return WldzPos
---@return WldxPos
---@return WldyPos
---@return WldzPos
---@return WldxPos
---@return WldyPos
---@return WldzPos
function Spring.GetUnitPosition(unitId,returnMidPos,returnAimPos)end

---@param unitId unitId
---@return WldxVel
---@return WldyVel
---@return WldzVel
---@return WldSpeed
function Spring.GetUnitVelocity(unitId)end

--- get the height of the ground at the pos
---@param x WldxPos
---@param z WldzPos
---@return WldyPos
function Spring.GetGroundHeight(x,z)end

---@return allyteamId
function Spring.GetMyAllyTeamID()end

---@return teamId
function Spring.GetMyTeamID()end

--- return true when spec
---@return boolean
function Spring.GetSpectatingState()end

---whether pos is in radar of allyteamId
---@param x WldxPos
---@param y WldyPos
---@param z WldzPos
---@param allyteamId allyteamId
---@return boolean
function Spring.IsPosInRadar(x,y,z,allyteamId)end

---whether pos is in los of allyteamId
---@param x WldxPos
---@param y WldyPos
---@param z WldzPos
---@param allyteamId allyteamId
---@return boolean
function Spring.IsPosInLos(x,y,z,allyteamId)end

---add a marker
---@param x WldxPos
---@param y WldyPos
---@param z WldzPos
---@param msg string
---@param onlyLocal boolean|nil true to add marker to local only
function Spring.MarkerAddPoint(x,y,z,msg,onlyLocal)end

---remove marker at pos
---@param x WldxPos
---@param y WldyPos
---@param z WldzPos
function Spring.MarkerErasePosition(x,y,z)end

---returns units in Cylinder
---@param x WldxPos
---@param z WldzPos
---@param radius WldDist
---@param teamId teamId
---@return list<unitId>
function Spring.GetUnitsInCylinder(x,z,radius,teamId)end