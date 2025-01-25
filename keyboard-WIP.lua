print("grid keyboard - root note selector + channel selector")

root_offsets = {0,2,4,5,7,9,11}
root_index = 1  -- Track the index in root_offsets array
current_root = root_offsets[root_index]
current_channel = 1
show_channel = false

is_root_note = function(x, y)
  local note = x + (7-y)*5 + 50
  return note % 12 == current_root
end

grid_led_all(0)
grid_led(1,8,15)  -- Initial C position

for y=1,8 do
  for x=2,16 do
    grid_led(x,y,is_root_note(x,y) and 5 or 2)
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
    grid_led(1,9-root_index,15)
    for y=1,8 do
      for x=2,16 do
        grid_led(x,y,is_root_note(x,y) and 5 or 2)
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
  else
    if x == 1 and y > 1 and z == 1 then
      root_index = 9-y
      if root_index <= 7 then
        grid_led_all(0)
        grid_led(1,y,15)
        current_root = root_offsets[root_index]
        for y=1,8 do
          for x=2,16 do
            grid_led(x,y,is_root_note(x,y) and 5 or 2)
          end
        end
        grid_refresh()
      end
    elseif x > 1 then
      note = x + (7-y)*5 + 50
      midi_tx(0, 0x90+current_channel, note, z*127)
      if z == 1 then
        grid_led(x,y,15)
      else
        grid_led(x,y,is_root_note(x,y) and 5 or 2)
      end
      grid_refresh()
    end
  end
end
