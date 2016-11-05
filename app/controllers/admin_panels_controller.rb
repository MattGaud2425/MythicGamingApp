class AdminPanelsController < ApplicationController

  def main
  	@games = Game.all
  end
  
end
