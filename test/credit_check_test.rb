require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'

class CreditCheckTest < Minitest::Test

  def test_it_exists
    credit_check = CreditCheck.new
    assert_instance_of CreditCheck, credit_check
  end

  def test_credit_card_number
    credit_check = CreditCheck.new
    assert_equal "4929735477250543", credit_check.cc_number
  end 





end
