
function on_robot_built(event)
	if event.robot.name == "wooden-construction-robot" then
		event.robot.die()
	end
end

script.on_event(defines.events.on_robot_built_entity, on_robot_built)
script.on_event(defines.events.on_robot_built_tile, on_robot_built)
