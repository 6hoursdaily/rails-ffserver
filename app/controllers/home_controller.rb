class HomeController < ApplicationController
  def index
  end

  def dashboard
    @sources = [51, 52, 53, 54, 55, 57]
  end
end
