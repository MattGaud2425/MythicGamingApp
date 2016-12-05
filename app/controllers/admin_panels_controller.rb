class AdminPanelsController < ApplicationController

  def main
  	@games = Game.all
  end

  def control_panel
  end
  
  
end
