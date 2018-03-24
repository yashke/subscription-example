require 'revenue_generator/account'

module RevenueGenerator
  class AccountRepository
    def fetch_or_create(account_id)
      record = Ar::Account.find_or_create_by(id: account_id)
      Account.new(record.id, record.revenue)
    end
  end
end
