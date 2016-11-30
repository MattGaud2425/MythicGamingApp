class GametypesController < ApplicationController
  before_action :set_game

  def index
    if @game.present?
      @gametypes = @game.gametypes 
    else
      @gametypes = Gametype.all  
    end 
  end

  def new
    @gametype = Gametype.new
  end

  def create
    @gametype = @game.gametypes.new(gametype_params)
    if @gametype.save 
      redirect_to game_gametypes_path(@game)
    else
      render :new 
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  private

  def set_game
    if params[:game_id].present?
      @game = Game.find(params[:game_id])
    end    
  end

  def gametype_params 
    params.require(:gametype).permit(:name)
  end
end
