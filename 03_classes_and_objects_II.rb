class MyCar
  attr_accessor :color
  attr_reader :year, :model
  
    def initialize(year, color, model)
      @year = year
      @color = color
      @model = model
      @current_speed  = 0
    end

    def self.gas_mileage(gas, miles_until_empty)
      puts "This car gets #{(miles_until_empty / gas).to_f} miles per litre."
    end

    def to_s
      "This is a #{year} #{model}. Its is #{color} and it is fantastic!"
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
  
    def spray_paint(color)
      self.color = color
      puts "Your car is now #{color}"
    end
  
  end

  kevins_car = MyCar.new(2018, "blue", "civic")
  MyCar.gas_mileage(35, 120)
  puts kevins_car