class TeamsController < ApplicationController
    def new
    @team = Teaml.new
  end

  def index
    @team= Team.all
  end

    def show
    @team = Team.find(params[:id])
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to team_path(@team)
    else
      render :new
    end
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    redirect_to teams_path
  end

  private

  def cocktail_params
    params.require(:team).permit(:name, :location)

  end
end
