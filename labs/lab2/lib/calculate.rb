class Calculate
  def self.search_max(arr)
    max_str = arr[0]
    (1..arr.length - 1).each do |i|
      max_str = arr[i] if max_str.split(',')[1].to_i < arr[i].split(',')[1].to_i
    end
    max_str
  end

  def self.search_min(arr)
    min_str = arr[0]
    (1..arr.length - 1).each do |i|
      min_str = arr[i] if min_str.split(',')[1].to_i > arr[i].split(',')[1].to_i
    end
    min_str
  end

  def self.calculate_average(arr)
    sum = 0
    (0..arr.length - 1).each do |i|
      sum += arr[i].split(',')[1].to_f
    end
    sum / arr.length
  end

  def self.calculate_correct_sample_variance(arr)
    sample_mean = calculate_average(arr)
    sum = average_sum_of_difference(arr, sample_mean)
    average = sum / arr.length
    (arr.length.to_f / (arr.length - 1.to_f)) * average
  end

  def self.average_sum_of_difference(arr, sample_mean)
    sum = 0
    (0..arr.length - 1).each do |i|
      sum += (arr[i].split(',')[1].to_f - sample_mean)**2
    end
    sum.to_f
  end
end
