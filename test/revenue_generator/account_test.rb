require 'minitest/autorun'
require 'securerandom'
require 'revenue_generator/account'

module RevenueGenerator
  class AccountTest < Minitest::Test
    def test_account_starts_with_balance_0
      @account = Account.new(SecureRandom.uuid)
      assert_equal(0, @account.balance)
    end
  end
end
