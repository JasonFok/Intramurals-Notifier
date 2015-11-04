class MembersController < ApplicationController

	def create
		@team = Team.find(params[:team_id])
		@member = @team.members.create(params[:member].permit(:name, :email))
		
		# Sends email to user when user is created.
     NotifierMailer.notifier_email(@member).deliver

		redirect_to team_path(@team)
	end

	def destroy
		@team = Team.find(params[:team_id])
		@member = @team.members.find(params[:id])
		@member.destroy

		redirect_to team_path(@team)
	end
end
