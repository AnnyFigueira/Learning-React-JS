class ArchivesController < ApplicationController
	def create
		@user = User.find(params[:user_id])
		@archive = @users.archives.create(archive_params)
		redirect_to user_path(@user)
	end
	
	private
		def archive_params
			params.require(:archive).permit(:filename, :content, :user, :private)
		end
end
