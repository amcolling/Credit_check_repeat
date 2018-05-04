require 'pry'
class CreditCheck
  attr_reader :cc_number

  def initialize
    @cc_number = "4929735477250543"
  end

  def convert_to_array
    @cc_number.chars
  end

  def reverse_array
    @cc_number.to_i.digits
  end

  def doubled
    reverse_array.map.with_index do |digit, index|
      if index.odd? == true
        digit * 2
      else
        digit
      end
    end
  end





end
