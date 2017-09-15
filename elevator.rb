# - Elevator states:
#   - capacity
#   - floor
#   - floor range
#   - current direction
#     - up (1), down (-1), idle (0)
#   - doors open or closed
#   - current weight
#   - floors selected
#   - floors requested with direction
#   - once complete, become idle or switch directions if there are selections or requests
# - Elevator displays its current floor and direction
# - Elevator won't move if weight limit exceeded
#   - rider is notified with sound
# - Elevator continues in the same direction as long as there are requests or selections in that direction
# or until it has reached the end of that direction
#
# - Rider can call elevator with up or down buttons
# - When in elevator, a rider can select a floor

class Elevator
  attr_accessor :door_open, :current_floor, :direction
  attr_reader :floors, :capacity, :floor_requests

  def initialize(floors, capacity, weight_sensor)
    @floors = floors
    @capacity = capacity
    @current_floor = 1
    @door_open = false
    @direction = 0
    @weight_sensor = weight_sensor
    @floor_requests = {} # { floor: directions[] } (directions can include up and down)
  end

  def request_floor(number)
    # Elevator creates floor request based on its own direction and current floor
  end

  def request_elevator(number, direction)
    # - Elevator continues in the same direction as long as there are requests or selections in that direction
    # or until it has reached the end of that direction
  end
  
  private

  def open_door
  end

  def close_door
    # check if over capacity
    # - error if so
    # - otherwise close
  end

  def over_capacity?
    # check if sensor reading is > capacity
  end

  def move_to_next_stop
    # at each floor, check floor requests to see if elevator should stop
  end
end

class Sensor
  def get_current_weight
  end
end

