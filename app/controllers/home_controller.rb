class HomeController < ApplicationController
  def index
  end

  def client_login
    flash[:error] = "Not authorized."
    redirect_to :root
  end

end
