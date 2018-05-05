require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'

class CreditCheckTest < Minitest::Test

  def test_it_exists
    credit_check = CreditCheck.new("4929735477250543")
    assert_instance_of CreditCheck, credit_check
  end

  def test_credit_card_number
    credit_check = CreditCheck.new("4929735477250543")
    credit_check_1 = CreditCheck.new("342804633855673")
    credit_check_2 = CreditCheck.new("342801633855673")
    assert_equal "4929735477250543", credit_check.cc_number
    assert_equal "342804633855673", credit_check_1.cc_number
    assert_equal "342801633855673", credit_check_2.cc_number
  end



  def test_reverse_array
    credit_check = CreditCheck.new("4929735477250543")
    credit_check_1 = CreditCheck.new("342804633855673")
    credit_check_2 = CreditCheck.new("342801633855673")
    assert_equal [3, 4, 5, 0, 5, 2, 7, 7, 4, 5, 3, 7, 9, 2, 9, 4], credit_check.reverse_array
    assert_equal [3, 7, 6, 5, 5, 8, 3, 3, 6, 4, 0, 8, 2, 4, 3], credit_check_1.reverse_array
    assert_equal [3, 7, 6, 5, 5, 8, 3, 3, 6, 1, 0, 8, 2, 4, 3], credit_check_2.reverse_array
  end

  def test_doubled
    credit_check = CreditCheck.new("4929735477250543")
    credit_check_1 = CreditCheck.new("342804633855673")
    credit_check_2 = CreditCheck.new("342801633855673")
    assert_equal [3, 8, 5, 0, 5, 4, 7, 14, 4, 10, 3, 14, 9, 4, 9, 8], credit_check.doubled_every_other
    assert_equal [3, 14, 6, 10, 5, 16, 3, 6, 6, 8, 0, 16, 2, 8, 3], credit_check_1.doubled_every_other
    assert_equal [3, 14, 6, 10, 5, 16, 3, 6, 6, 2, 0, 16, 2, 8, 3], credit_check_2.doubled_every_other
  end

  def test_add_digits_over_ten
    credit_check = CreditCheck.new("4929735477250543")
    credit_check_1 = CreditCheck.new("342804633855673")
    credit_check_2 = CreditCheck.new("342801633855673")
    assert_equal [3, 8, 5, 0, 5, 4, 7, 14, 4, 10, 3, 14, 9, 4, 9, 8], credit_check.add_digits_over_ten
    assert_equal [3, 14, 6, 10, 5, 16, 3, 6, 6, 8, 0, 16, 2, 8, 3], credit_check_1.add_digits_over_ten
    assert_equal [3, 14, 6, 10, 5, 16, 3, 6, 6, 2, 0, 16, 2, 8, 3], credit_check_2.add_digits_over_ten
  end

  def test_sum
    credit_check = CreditCheck.new("4929735477250543")
    credit_check_1 = CreditCheck.new("342804633855673")
    credit_check_2 = CreditCheck.new("342801633855673")
    assert_equal 107, credit_check.sum
    assert_equal 106, credit_check_1.sum
    assert_equal 100, credit_check_2.sum
  end

  def test_final_sum
    credit_check = CreditCheck.new("4929735477250543")
    credit_check_1 = CreditCheck.new("342804633855673")
    credit_check_2 = CreditCheck.new("342801633855673")
    assert_equal "This number is not valid!", credit_check.module_of_ten
    assert_equal "This number is not valid!", credit_check_1.module_of_ten
    assert_equal "This number is valid!", credit_check_2.module_of_ten
  end
end
