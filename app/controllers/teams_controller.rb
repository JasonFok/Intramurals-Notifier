class TeamsController < ApplicationController
	def index
		@teams = Team.all.order('created_at DESC')
	end

	def new
		@team = Team.new
	end

	def create 
		@team = Team.new(team_params)
		
		if @team.save
			redirect_to @team
		else
			render 'new'
		end
	end

	def show
		@team = Team.find(params[:id])
	end

	private
		def team_params
			params.require(:team).permit(:name, :sport)
		end
end
