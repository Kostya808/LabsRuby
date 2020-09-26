require './lib/calculate'

describe Calculate do
  it 'Поиск максимума' do
    expect(Calculate.search_max(['A,1', 'B,2', 'C,3', 'D,-1', 'E,5'])).to eq 'E,5'
  end

  it 'Поиск минимума' do
    expect(Calculate.search_min(['A,1', 'B,2', 'C,3', 'D,-1', 'E,5'])).to eq 'D,-1'
  end

  it 'Поиск среднего' do
    expect(Calculate.calculate_average(['A,1', 'B,2', 'C,3', 'D,-1', 'E,5'])).to eq '2'.to_f
  end

  it 'Вычисление исправленной выборочной дисперсии' do
    expect(Calculate.calculate_correct_sample_variance(['A,1', 'B,2', 'C,3', 'D,-1', 'E,5'])).to eq '5'.to_f
  end
end
