print("grid keyboard - fourths - C major - WIP")

current_channel = 1
show_channel = false

-- C D E F G A B
local c_major = {0,2,4,5,7,9,11}

get_note = function(x, y)
  if x < 9 then return nil end
  local base = 36  -- C1
  local row_note = base + (8-y)*5  -- Row goes up in 4ths (5 semitones)
  local scale_position = x-8
  if scale_position > 7 then 
    scale_position = scale_position - 7
    row_note = row_note + 12
  end
  return row_note + c_major[scale_position]
end

is_c_note = function(x, y)
  local note = get_note(x, y)
  return note and note % 12 == 0
end

grid_led_all(0)
for y=1,8 do
  for x=9,16 do
    grid_led(x,y,is_c_note(x,y) and 5 or 2)
  end
end
grid_refresh()

grid = function(x,y,z)
  if z == 1 and x == 1 and y == 1 then
    show_channel = true
    grid_led_all(0)
    grid_led(16,current_channel,15)
    grid_refresh()
  elseif z == 0 and x == 1 and y == 1 then
    show_channel = false
    grid_led_all(0)
    for y=1,8 do
      for x=9,16 do
        grid_led(x,y,is_c_note(x,y) and 5 or 2)
      end
    end
    grid_refresh()
  elseif show_channel and x == 16 then
    if z == 1 then
      grid_led_all(0)
      grid_led(16,y,15)
      current_channel = y
      grid_refresh()
    end
  elseif x > 8 then
    local note = get_note(x, y)
    if note then
      midi_tx(0, 0x90+current_channel, note, z*127)
      if z == 1 then
        grid_led(x,y,15)
      else
        grid_led(x,y,is_c_note(x,y) and 5 or 2)
      end
      grid_refresh()
    end
  end
end
