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

	def edit
		@team = Team.find(params[:id])
	end

	def update
		@team = Team.find(params[:id])

		if @team.update(params[:team].permit(:name, :sport))
			redirect_to @team
		else
			render 'edit'
		end
	end

	def destroy
		@team = Team.find(params[:id])
		@team.destroy

		redirect_to root_path
	end

	private
		def team_params
			params.require(:team).permit(:name, :sport)
		end
end
