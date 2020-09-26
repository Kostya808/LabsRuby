require './lib/calculate'

RSpec.describe Calculate do
  it 'Перевод из С в С' do
    expect(Calculate.scale_conversion(0, 'C', 'C')).to eq 0
  end

  it 'Перевод из С в К' do
    expect(Calculate.scale_conversion(0, 'C', 'K')).to eq(273.15)
  end

  it 'Перевод из C в F' do
    expect(Calculate.scale_conversion(0, 'C', 'F')).to eq(32)
  end

  it 'Перевод из K в C' do
    expect(Calculate.scale_conversion(273.15, 'K', 'C')).to eq 0
  end

  it 'Перевод из K в F' do
    expect(Calculate.scale_conversion(0, 'K', 'F')).to eq(-459.67)
  end

  it 'Перевод из F в C' do
    expect(Calculate.scale_conversion(0, 'F', 'C')).to eq(-17.77777777777778)
  end

  it 'Перевод из F в K' do
    expect(Calculate.scale_conversion(-459.67, 'F', 'K')).to eq 0
  end
end
