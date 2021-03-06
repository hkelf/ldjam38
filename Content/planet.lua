
Planet = {}

--

Planet.CORE_SIDES = 16
Planet.CORE_RADIUS = 5

Planet.MANTLE_SIDES = 24
Planet.MANTLE_RADIUS = 15

Planet.CRUST_SIDES = 64
Planet.CRUST_RADIUS = 30

--

Planet.New = function()
--{
	local o = {}

	-- Generate core vertices

	o.core_mesh = love.graphics.newMesh(Planet.CORE_SIDES, 'fan', 'dynamic')

	for  i = 1 , Planet.CORE_SIDES
	do
		local h = math.rad(i * (360 / Planet.CORE_SIDES))

		o.core_mesh:setVertex(i,
			math.cos(h) * Planet.CORE_RADIUS,
			math.sin(h) * Planet.CORE_RADIUS,
			0, 0, 224, 130, 98, 255
		)
	end

	-- Generate mantle vertices

	o.mantle_mesh = love.graphics.newMesh(Planet.MANTLE_SIDES, 'fan', 'static')

	for  i = 1 , Planet.MANTLE_SIDES
	do
		local h = math.rad(i * (360 / Planet.MANTLE_SIDES))

		o.mantle_mesh:setVertex(i,
			math.cos(h) * Planet.MANTLE_RADIUS,
			math.sin(h) * Planet.MANTLE_RADIUS,
			0, 0, 142, 129, 102, 255
		)
	end

	-- Generate crust vertices

	o.crust_mesh = love.graphics.newMesh(Planet.CRUST_SIDES, 'fan', 'dynamic')

	for  i = 1 , Planet.CRUST_SIDES
	do
		local h = math.rad(i * (360 / Planet.CRUST_SIDES))

		o.crust_mesh:setVertex(i,
			math.cos(h) * Planet.CRUST_RADIUS,
			math.sin(h) * Planet.CRUST_RADIUS,
			0, 0, 140, 183, 91, 255
		)
	end

	return o
end

--

Planet.Draw = function(o)
--{
	love.graphics.draw(o.crust_mesh,640,360)
	love.graphics.draw(o.mantle_mesh,640,360)
	love.graphics.draw(o.core_mesh,640,360)
end
