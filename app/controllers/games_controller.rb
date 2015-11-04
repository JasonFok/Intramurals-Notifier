class GamesController < ApplicationController

	def create
		@team = Team.find(params[:team_id])
		@game = @team.games.create(params[:game].permit(:date_time, :location))
		
		redirect_to team_path(@team)
	end

	def destroy
		@team = Team.find(params[:team_id])
		@game = @team.games.find(params[:id])
		@game.destroy

		redirect_to team_path(@team)
	end
end
