
module SprayPaint
  def spray_paint(color)
    self.color = color
    puts "Your new color is #{color}"
  end
end


class MyCar

  attr_accessor :color
  attr_reader :year
  include SprayPaint

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
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

new_car = MyCar.new(1997, 'new_car', 'white')
new_car.speed_up(20)
new_car.current_speed
new_car.speed_up(20)
new_car.current_speed
new_car.brake(20)
new_car.current_speed
new_car.brake(20)
new_car.current_speed
new_car.shut_down
new_car.current_speed
new_car.spray_paint('red') 