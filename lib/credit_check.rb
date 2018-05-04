
class CreditCheck
  attr_reader :cc_number

  def initialize
    @cc_number = "4929735477250543"
  end

  def reverse_array
    @cc_number.to_i.digits
  end

  def doubled_every_other
    reverse_array.map.with_index do |digit, index|
      if index.odd? == true
        digit * 2
      else
        digit
      end
    end
  end

  def add_digits_over_ten
    doubled_every_other do |digit|
      if digit > 9
        digit.array.sum
      else
        digit
      end
    end
  end

  def sum
    add_digits_over_ten.sum
  end

  def module_of_ten
    if sum % 10 == 0
      p "This number is valid!"
    else
      p "This number is not valid!"
    end
  end






end
