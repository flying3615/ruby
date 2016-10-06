case input
  when :up_arrow then ship.tilt_up
  when :down_arrow then ship.tilt_down
  when :left_arrow then ship.turn_left
  when :right_arrow then ship.turn_right
end


#using send to simulate upper case when
handlers = {
    up_arrow: :tilt_up,
    down_arrow: :tilt_down,
    left_arrow: :turn_left,
    right_arrow: :turn_right,
}

ship.send(handlers[inputs])

# those lines are equivalent:
1.send '+', 2
1.+(2)
1 + 2