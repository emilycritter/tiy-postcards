class HomepageController < ApplicationController
  before_action :authenticate_user!

  def show
    @postcards = @current_user.postcards
  end
end
