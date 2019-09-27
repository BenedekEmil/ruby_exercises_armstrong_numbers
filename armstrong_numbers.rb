require_relative 'main_logger'

module ArmstrongNumbers

  def self.include?(number)
    number == armstrong_sum(number.to_i.digits,
                            0,
                            number.digits.length)
  end

  private

  def self.armstrong_sum(digits_array, sum, length)
    sum += digits_array[0]**length
    return sum if digits_array.length == 1

    armstrong_sum(digits_array.drop(1), sum, length)
  end

end