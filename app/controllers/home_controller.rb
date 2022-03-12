class HomeController < ApplicationController
  def index
    @bot_username = ENV["BOT_USERNAME"].presence
  end
end
