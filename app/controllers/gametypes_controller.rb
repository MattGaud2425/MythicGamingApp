class GametypesController < ApplicationController
  before_action :set_game, :set_bracket, :set_map
  before_action :set_gametype, except: [:new, :create, :index]

  def index
    if @game.present?
      @gametypes = @map.gametypes
    else
      @gametypes = Gametype.all  
    end 
  end

  def new
    @gametype = Gametype.new
  end

  def create
    @gametype = @map.gametypes.new(gametype_params)
    if @gametype.save 
      redirect_to game_bracket_map_gametypes_path(@game, @bracket, @map)
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

  def set_bracket
     if params[:bracket_id].present?
      @bracket = Bracket.find(params[:bracket_id])
    end
  end

  def set_map
    if params[:map_id].present?
      @map = Map.find(params[:map_id])
    else
      @map = Map.find(params[:id])
    end
  end

  def set_gametype 
    @gametype = Gametype.find(params[:id])
  end


  def gametype_params 
    params.require(:gametype).permit(:name)
  end
end
