class MapsController < ApplicationController

  before_action :set_game, :set_bracket
  before_action :set_map, except: [:new, :create, :index]

  def index
    @maps = @bracket.maps
  end

  def new
    @map = @bracket.maps.new
  end

  def create
    @map = @bracket.maps.new(map_params)
    if @map.save
      flash[:success] = "Map succesfully saved."
      redirect_to game_bracket_maps_path(@game, @bracket)
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

  def set_map
    if params[:map_id].present?
      @map = Map.find(params[:map_id])
    else
      @map = Map.find(params[:id])
    end
  end

  def map_params 
    params.require(:map).permit(:name)
  end

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
end
