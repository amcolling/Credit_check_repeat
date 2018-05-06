require './lib/credit_check'


credit_check = CreditCheck.new("4929735477250543")
credit_check_1 = CreditCheck.new("342804633855673")
credit_check_2 = CreditCheck.new("342801633855673")

credit_check.module_of_ten
credit_check_1.module_of_ten
credit_check_2.module_of_ten
