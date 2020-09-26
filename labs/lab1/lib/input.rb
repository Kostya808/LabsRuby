class Input
  def self.input_number
    inpt = 0
    loop do
      print 'Введите число с плавающей запятой: '
      inpt = $stdin.gets.strip
      break if inpt.to_f.to_s == inpt
    end
    inpt.to_f
  end

  def self.input_scale
    inpt = ''
    loop do
      print 'Введите название шкалы C, K, или F: '
      inpt = $stdin.gets.strip
      break if %w[C K F].include? inpt
    end
    inpt
  end
end
