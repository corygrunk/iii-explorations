print("grid keyboard - fourths")

current_channel = 1

-- You can update this to any scale you want
scale = {60, 62, 64, 65, 67, 69, 71} -- always seven notes

-- Initialize grid
grid_led_all(0)
for y=1,8 do
  for x=9,16 do
    grid_led(x,y,2)
  end
end
-- root notes
grid_led(9,1,6)
grid_led(16,1,6)
grid_led(12,2,6)
grid_led(15,3,6)
grid_led(11,4,6)
grid_led(14,5,6)
grid_led(10,6,6)
grid_led(13,7,6)
grid_led(9,8,6)
grid_led(16,8,6)
grid_refresh()

-- hard coding the keyboard layout
note_on = function(x,y)
  -- print(x .. ' ' .. y)
  if y == 1 then
    if x == 9  then midi_note_on(scale[1]+12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 10 then midi_note_on(scale[2]+12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 11 then midi_note_on(scale[3]+12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 12 then midi_note_on(scale[4]+12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 13 then midi_note_on(scale[5]+12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 14 then midi_note_on(scale[6]+12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 15 then midi_note_on(scale[7]+12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 16 then midi_note_on(scale[1]+24, 100, current_channel); grid_led(x,y,15); grid_refresh() end
  elseif y == 2 then
    if x == 9  then midi_note_on(scale[5], 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 10 then midi_note_on(scale[6], 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 11 then midi_note_on(scale[7], 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 12 then midi_note_on(scale[1]+12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 13 then midi_note_on(scale[2]+12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 14 then midi_note_on(scale[3]+12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 15 then midi_note_on(scale[4]+12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 16 then midi_note_on(scale[5]+12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
  elseif y == 3 then
    if x == 9  then midi_note_on(scale[2], 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 10 then midi_note_on(scale[3], 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 11 then midi_note_on(scale[4], 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 12 then midi_note_on(scale[5], 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 13 then midi_note_on(scale[6], 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 14 then midi_note_on(scale[7], 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 15 then midi_note_on(scale[1]+12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 16 then midi_note_on(scale[2]+12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
  elseif y == 4 then
    if x == 9  then midi_note_on(scale[6]-12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 10 then midi_note_on(scale[7]-12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 11 then midi_note_on(scale[1], 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 12 then midi_note_on(scale[2], 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 13 then midi_note_on(scale[3], 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 14 then midi_note_on(scale[4], 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 15 then midi_note_on(scale[5], 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 16 then midi_note_on(scale[6], 100, current_channel); grid_led(x,y,15); grid_refresh() end
  elseif y == 5 then
    if x == 9  then midi_note_on(scale[3]-12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 10 then midi_note_on(scale[4]-12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 11 then midi_note_on(scale[5]-12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 12 then midi_note_on(scale[6]-12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 13 then midi_note_on(scale[7]-12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 14 then midi_note_on(scale[1], 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 15 then midi_note_on(scale[2], 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 16 then midi_note_on(scale[3], 100, current_channel); grid_led(x,y,15); grid_refresh() end
  elseif y == 6 then
    if x == 9  then midi_note_on(scale[7]-24, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 10 then midi_note_on(scale[1]-12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 11 then midi_note_on(scale[2]-12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 12 then midi_note_on(scale[3]-12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 13 then midi_note_on(scale[4]-12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 14 then midi_note_on(scale[5]-12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 15 then midi_note_on(scale[6]-12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 16 then midi_note_on(scale[7]-12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
  elseif y == 7 then
    if x == 9  then midi_note_on(scale[4]-24, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 10 then midi_note_on(scale[5]-24, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 11 then midi_note_on(scale[6]-24, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 12 then midi_note_on(scale[7]-24, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 13 then midi_note_on(scale[1]-12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 14 then midi_note_on(scale[2]-12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 15 then midi_note_on(scale[3]-12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 16 then midi_note_on(scale[4]-12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
  elseif y == 8 then
    if x == 9  then midi_note_on(scale[1]-24, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 10 then midi_note_on(scale[2]-24, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 11 then midi_note_on(scale[3]-24, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 12 then midi_note_on(scale[4]-24, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 13 then midi_note_on(scale[5]-24, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 14 then midi_note_on(scale[6]-24, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 15 then midi_note_on(scale[7]-24, 100, current_channel); grid_led(x,y,15); grid_refresh() end
    if x == 16 then midi_note_on(scale[1]-12, 100, current_channel); grid_led(x,y,15); grid_refresh() end
  end
  grid_refresh()
end

note_off = function(x,y)
  if y == 1 then
    if x == 9  then midi_note_off(scale[1]+12); grid_led(x,y,6); grid_refresh() end
    if x == 10 then midi_note_off(scale[2]+12); grid_led(x,y,2); grid_refresh() end
    if x == 11 then midi_note_off(scale[3]+12); grid_led(x,y,2); grid_refresh() end
    if x == 12 then midi_note_off(scale[4]+12); grid_led(x,y,2); grid_refresh() end
    if x == 13 then midi_note_off(scale[5]+12); grid_led(x,y,2); grid_refresh() end
    if x == 14 then midi_note_off(scale[6]+12); grid_led(x,y,2); grid_refresh() end
    if x == 15 then midi_note_off(scale[7]+12); grid_led(x,y,2); grid_refresh() end
    if x == 16 then midi_note_off(scale[1]+24); grid_led(x,y,6); grid_refresh() end
  elseif y == 2 then
    if x == 9  then midi_note_off(scale[5]); grid_led(x,y,2); grid_refresh() end
    if x == 10 then midi_note_off(scale[6]); grid_led(x,y,2); grid_refresh() end
    if x == 11 then midi_note_off(scale[7]); grid_led(x,y,2); grid_refresh() end
    if x == 12 then midi_note_off(scale[1]+12); grid_led(x,y,6); grid_refresh() end
    if x == 13 then midi_note_off(scale[2]+12); grid_led(x,y,2); grid_refresh() end
    if x == 14 then midi_note_off(scale[3]+12); grid_led(x,y,2); grid_refresh() end
    if x == 15 then midi_note_off(scale[4]+12); grid_led(x,y,2); grid_refresh() end
    if x == 16 then midi_note_off(scale[5]+12); grid_led(x,y,2); grid_refresh() end
  elseif y == 3 then
    if x == 9  then midi_note_off(scale[2]); grid_led(x,y,2); grid_refresh() end
    if x == 10 then midi_note_off(scale[3]); grid_led(x,y,2); grid_refresh() end
    if x == 11 then midi_note_off(scale[4]); grid_led(x,y,2); grid_refresh() end
    if x == 12 then midi_note_off(scale[5]); grid_led(x,y,2); grid_refresh() end
    if x == 13 then midi_note_off(scale[6]); grid_led(x,y,2); grid_refresh() end
    if x == 14 then midi_note_off(scale[7]); grid_led(x,y,2); grid_refresh() end
    if x == 15 then midi_note_off(scale[1]+12); grid_led(x,y,6); grid_refresh() end
    if x == 16 then midi_note_off(scale[2]+12); grid_led(x,y,2); grid_refresh() end
  elseif y == 4 then
    if x == 9  then midi_note_off(scale[6]-12); grid_led(x,y,2); grid_refresh() end
    if x == 10 then midi_note_off(scale[7]-12); grid_led(x,y,2); grid_refresh() end
    if x == 11 then midi_note_off(scale[1]); grid_led(x,y,6); grid_refresh() end
    if x == 12 then midi_note_off(scale[2]); grid_led(x,y,2); grid_refresh() end
    if x == 13 then midi_note_off(scale[3]); grid_led(x,y,2); grid_refresh() end
    if x == 14 then midi_note_off(scale[4]); grid_led(x,y,2); grid_refresh() end
    if x == 15 then midi_note_off(scale[5]); grid_led(x,y,2); grid_refresh() end
    if x == 16 then midi_note_off(scale[6]); grid_led(x,y,2); grid_refresh() end
  elseif y == 5 then
    if x == 9  then midi_note_off(scale[3]-12); grid_led(x,y,2); grid_refresh() end
    if x == 10 then midi_note_off(scale[4]-12); grid_led(x,y,2); grid_refresh() end
    if x == 11 then midi_note_off(scale[5]-12); grid_led(x,y,2); grid_refresh() end
    if x == 12 then midi_note_off(scale[6]-12); grid_led(x,y,2); grid_refresh() end
    if x == 13 then midi_note_off(scale[7]-12); grid_led(x,y,2); grid_refresh() end
    if x == 14 then midi_note_off(scale[1]); grid_led(x,y,6); grid_refresh() end
    if x == 15 then midi_note_off(scale[2]); grid_led(x,y,2); grid_refresh() end
    if x == 16 then midi_note_off(scale[3]); grid_led(x,y,2); grid_refresh() end
  elseif y == 6 then
    if x == 9  then midi_note_off(scale[7]-24); grid_led(x,y,2); grid_refresh() end
    if x == 10  then midi_note_off(scale[1]-12); grid_led(x,y,6); grid_refresh() end
    if x == 11 then midi_note_off(scale[2]-12); grid_led(x,y,2); grid_refresh() end
    if x == 12  then midi_note_off(scale[3]-12); grid_led(x,y,2); grid_refresh() end
    if x == 13  then midi_note_off(scale[4]-12); grid_led(x,y,2); grid_refresh() end
    if x == 14  then midi_note_off(scale[5]-12); grid_led(x,y,2); grid_refresh() end
    if x == 15  then midi_note_off(scale[6]-12); grid_led(x,y,2); grid_refresh() end
    if x == 16  then midi_note_off(scale[7]-12); grid_led(x,y,2); grid_refresh() end
  elseif y == 7 then
    if x == 9  then midi_note_off(scale[4]-24); grid_led(x,y,2); grid_refresh() end
    if x == 10 then midi_note_off(scale[5]-24); grid_led(x,y,2); grid_refresh() end
    if x == 11 then midi_note_off(scale[6]-24); grid_led(x,y,2); grid_refresh() end
    if x == 12 then midi_note_off(scale[7]-24); grid_led(x,y,2); grid_refresh() end
    if x == 13 then midi_note_off(scale[1]-12); grid_led(x,y,6); grid_refresh() end
    if x == 14 then midi_note_off(scale[2]-12); grid_led(x,y,2); grid_refresh() end
    if x == 15 then midi_note_off(scale[3]-12); grid_led(x,y,2); grid_refresh() end
    if x == 16 then midi_note_off(scale[4]-12); grid_led(x,y,2); grid_refresh() end
  elseif y == 8 then
    if x == 9  then midi_note_off(scale[1]-24); grid_led(x,y,6); grid_refresh() end
    if x == 10 then midi_note_off(scale[2]-24); grid_led(x,y,2); grid_refresh() end
    if x == 11 then midi_note_off(scale[3]-24); grid_led(x,y,2); grid_refresh() end
    if x == 12 then midi_note_off(scale[4]-24); grid_led(x,y,2); grid_refresh() end
    if x == 13 then midi_note_off(scale[5]-24); grid_led(x,y,2); grid_refresh() end
    if x == 14 then midi_note_off(scale[6]-24); grid_led(x,y,2); grid_refresh() end
    if x == 15 then midi_note_off(scale[7]-24); grid_led(x,y,2); grid_refresh() end
    if x == 16 then midi_note_off(scale[1]-12); grid_led(x,y,6); grid_refresh() end
  end
  grid_refresh()
end

grid = function(x,y,z)
  if x > 8 and z == 1 then
    note_on(x,y)
  elseif x > 8 and z == 0 then
    note_off(x,y)
  end
end
