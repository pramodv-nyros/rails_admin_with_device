class HomeController < ApplicationController
#  before_filter :authenticate_publisher!, :only => :new_publisher_msg

  def index
    if current_admin
      redirect_to '/admins'

    elsif current_publisher
      redirect_to publisher_show_path(current_publisher)
    else
      redirect_to new_publisher_session_path
    end
  end

end
