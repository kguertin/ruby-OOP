class MyCar
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed  = 0
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end

end

kevins_car = MyCar.new(2018, "blue", "civic")
puts kevins_car.speed_up(10)
puts kevins_car.brake(5)
puts kevins_car.current_speed
puts kevins_car.shut_down