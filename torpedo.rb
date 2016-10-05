def turn_value_to_0(position)
  if @state[position] == 0
    return @state[position]
  else 
    @state[position] = 0
    return @state[position]
  end
end

def turn_value_to_0(position)
  if ship_at_position(position) == 0
    return 0
  elsif ship_at_position(position) == 1
    return ship_at_position(position)
  else 
    return 0
  end
end
