class WelcomeController < ApplicationController
  def show
    @current_user_id = current_user_id
  end

  private

  def current_user_id
    return @current_user_id if defined?(@current_user_id)

    if cookies[:current_user_id]
      @current_user_id = cookies[:current_user_id]
    else
      @current_user_id = SecureRandom.uuid
      cookies.permanent[:current_user_id] = @current_user_id
    end
  end
end
