class HomeController < ApplicationController
  before_action :authenticate_user!

  def welcome
    @tasks = current_user.user_tasks.today
  end
end
