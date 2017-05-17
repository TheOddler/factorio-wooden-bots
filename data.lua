require("prototypes.robot")

require("prototypes.equipment")

--[[
function tprint (tbl, indent)
	if not indent then indent = 0 end
	for k, v in pairs(tbl) do
		formatting = string.rep("  ", indent) .. k .. ": "
		if type(v) == "table" then
			if indent < 1 then
				print(formatting)
				tprint(v, indent+1)
			else
				print(formatting .. tostring(v))
			end
		elseif type(v) == 'boolean' then
			print(formatting .. tostring(v))      
		else
			print(formatting .. v)
		end
	end
end

print("--- DEBUG ---")
tprint(data.raw)
--]]
