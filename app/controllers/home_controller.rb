class HomeController < ApplicationController
  @gyms = Gym.all
  def index
  end
end
