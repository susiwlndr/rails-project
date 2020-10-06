class ForumPostsController < ApplicationController
	# before_action :authenticate_user!, only: [:create]
	# # create
	def create
		@thread = ForumThread.find(params[:forum_thread_id])
		@post = ForumPost.new(resource_params)

		@post.forum_thread = @thread
		@post.user = User.first

	  @post.save
			redirect_to forum_thread_path(@thread)
	end

	private

	def resource_params
		params.require(:forum_post).permit(:content)
	end
end