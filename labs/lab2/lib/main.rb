load 'calculate.rb'

class MainClass
  def self.main
    arr = reading_and_processing_data
    choice = input_choice

    case choice
    when 1
      puts Calculate.search_max(arr)
    when 2
      puts Calculate.search_min(arr)
    when 3
      puts Calculate.calculate_average(arr)
    when 4
      puts Calculate.calculate_correct_sample_variance(arr)
    end
  end

  def self.reading_and_processing_data
    f = File.new('stat.csv', 'r:UTF-8')
    lines = f.readlines
    lines.shift(2)

    (0..lines.length - 1).each do |i|
      lines[i] = lines[i].sub(/,\d+,/, ',')
    end
    lines
  end

  def self.input_choice
    choice = ''

    puts '1. Максимум'
    puts '2. Минимум'
    puts '3. Среднее значение'
    puts '4. Исправленную выборочную дисперсию'

    loop do
      print 'Введите число от 1 до 4: '
      choice = $stdin.gets.to_i
      break if choice >= 1 && choice <= 4
    end
    choice
  end
end

MainClass.main
