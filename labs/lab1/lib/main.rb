load 'input.rb'
load 'calculate.rb'

class Main
  def self.main
    number = Input.input_number
    old_scale = Input.input_scale
    puts "\nНазвание шкалы, в которую нужно перевести:"
    new_scale = Input.input_scale

    result = Calculate.scale_conversion(number, old_scale, new_scale)

    puts "#{number}  #{old_scale} = #{result}  #{new_scale}"
  end
end

Main.main
