class PlayersController < ApplicationController
    def new
    @Team = Teamfind(params[:cocktail_id])
    @player = Player.new
   end

 # def index
 #    @doses = Dose.all
 #  end

 def show
   @player = Playerw.find(params[:id])
 end

  #   def show
  #   @dose = dose.find(params[:id])
  # end

  def create
    @player = Player.new(dose_params)
    @team = Team.find(params[:team_id])
    @team.player = @player
    if @player.save
      redirect_to team_path(@team)
     else
       render :new
    end

  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    redirect_to player_path(@team.player)
  end

  private

  def player_params
     params.require(:player).permit(:position, :height, :weight)
   end
end
