class GamesController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]

  def index
    @games = Game.order(:id).page params[:page]
    skip_policy_scope
  end

  def show
    @game = Game.find(params[:id])
    skip_authorization
  end

  def new
    @game = Game.new
    authorize @game
  end

  def edit
    @game = Game.find(params[:id])
    authorize @game
  end

  def create
    @game = Game.new(game_params)
    authorize @game
    if @game.save
      redirect_to @game, notice: "#{@game.name} was successfully created."
    else
      render "new", error: "Could not save game."
    end
  end

  def update
    @game = Game.find(params[:id])
    authorize @game

    if @game.update(game_params)
      redirect_to @game, notice: "#{@game.name} was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @game = Game.find(params[:id])
    authorize @game
    @game.destroy
    redirect_to games_url, notice: "Game was successfully deleted."
  end

  private

  def game_params
    params.require(:game).permit(:name, :description)
  end
end
