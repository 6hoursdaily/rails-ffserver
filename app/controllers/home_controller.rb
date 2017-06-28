class HomeController < ApplicationController
  def index
  end

  def dashboard
    @sources = [51, 53, 55, 57, 54, 52]
  end

  def server
  end
end
