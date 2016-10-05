class Board

def initialize(size, positions)
  @state = Array.new(size, 0)
  set_up_positions(positions)
end

def number_of_tiles
  return @state.size
end

def set_up_positions(positions)
  for key in positions.keys
    @state[key] = positions[key]
  end
end

def ship_at_position(position)
  return @state[position]
end

def win_game?
  if @state.include?(1) == false 
    return false
  else
    return true
  end
end

end