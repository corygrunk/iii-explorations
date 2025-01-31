print("simple meadowphysics")

-- change this to toggle clock input:
midi_clock_in = true
ticks = 0

-- C Dorian scale: C D Eb F G A Bb C
local notes = {60, 62, 63, 65, 67, 69, 70, 72}
local patterns = {}

function tick()
  for y=1,8 do
    local p = patterns[y]
    if p then
      if p.x == 1 then
        p.x = p.start_x
        midi_note_on(notes[p.y], 100, 1)
        p.note_playing = true
      elseif p.note_playing then
        midi_note_off(notes[p.y], 0, 1)
        p.note_playing = false
      else
        p.x = p.x - 1
      end
    end
  end
  redraw()
end

function grid(x,y,z)
  if z == 1 then
    if patterns[y] and patterns[y].start_x == x then
      if patterns[y].note_playing then
        midi_note_off(notes[y], 0, 1)
      end
      patterns[y] = nil
    else
      patterns[y] = {
        x = x, 
        y = y, 
        start_x = x,
        note_playing = false
      }
    end
  end
  redraw()
end

function metro(index, stage)
  tick()
end

function redraw()
  grid_led_all(0)
  for y=1,8 do
    local p = patterns[y]
    if p then
      grid_led(p.start_x, p.y, 9)
      if p.x ~= p.start_x then
        grid_led(p.x, p.y, 4)
      end
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

if not midi_clock_in then
	-- 150ms per step
	metro_set(1, 150)
end

redraw()
