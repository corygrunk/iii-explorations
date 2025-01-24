print("hello iii")

-- change this to toggle clock input:
midi_clock_in = false

-- change these for different notes:
map = {66,68,70,72,74,76,78,80,82,84,86,88,90,92,94,96}

ch = 0
step = 1
last = 0
note = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
ticks = 0

tick = function()
	if last > 0 then midi_note_off(map[last]) end
	step = (step % 16) + 1
	last = note[step]
	if last > 0 then midi_note_on(map[last]) end
	redraw()
end

metro = function(index, count)
	tick()
end

grid = function(x,y,z)
	if z==0 then return end
  if note[x] == y then note[x] = 0
  else note[x] = y end
  redraw()
end

redraw = function()
	grid_led_all(0)
  -- playhead
  for x=1,16 do
    for y=1,8 do
      if step == x then
        grid_led(x,y,2)
      end
    end
    -- active notes
    if note[x] > 0 then
			grid_led(x,note[x],step==x and 15 or 6)
		end
  end

	grid_refresh()
end

midi_rx = function(d1,d2,d3,d4)
	if d1==8 and d2==240 then
		ticks = ((ticks + 1) % 12)
		if ticks == 0 and midi_clock_in then tick() end
	else
		ps("midi_rx %d %d %d %d",d1,d2,d3,d4)
	end
end


-- begin

if not midi_clock_in then
	-- 150ms per step
	metro_set(1, 150)
end

redraw()
