module RevenueGenerator
  class Account
    attr_reader :id, :balance

    def initialize(id, balance = 0)
      @id = id
      @balance = balance
    end
  end
end
