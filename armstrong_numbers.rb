module ArmstrongNumbers
  def self.include?(number)
    number == number.digits.inject(0) { |sum, i| sum + i**number.digits.length}
  end
end