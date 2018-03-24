require 'revenue_generator/account_repository'

class WelcomeController < ApplicationController
  def show
    cookies[:account_id] ||= SecureRandom.uuid
    @account = account_repository.fetch_or_create(cookies[:account_id])
  end

  private

  def account_repository
    @account_repository ||= RevenueGenerator::AccountRepository.new
  end
end
