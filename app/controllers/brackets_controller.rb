class BracketsController < ApplicationController
  before_action :set_game
  
  def index
    if @game.present?
      @brackets = @game.brackets 
    else
      @brackets = Bracket.all   
    end    
  end

  def new
    @bracket = Bracket.new
  end

  def create
    @bracket = @game.brackets.new(bracket_params)
    if @bracket.save 
      redirect_to game_brackets_path(@game)
    else
      render :new 
    end
  end

  def edit
  end

  def update
  end

  def show
    @bracket = Bracket.find(params[:id])
  end

  def destroy
  end

  private 

  def set_params 
  end

  def set_game
    if params[:game_id].present?
      @game = Game.find(params[:game_id])
    end    
  end


  def bracket_params 
    params.require(:bracket).permit(:title, :rounds, :team_size)
  end
end
