require 'revenue_generator/account_repository'

class WelcomeController < ApplicationController
  def show
    @account = account_repository.fetch_or_create(account_id)
  end

  private

  def account_repository
    @account_repository ||= RevenueGenerator::AccountRepository.new
  end

  def account_id
    cookies[:account_id] ||= SecureRandom.uuid
  end
end
