class CommentsController < ApplicationController
	def create
		post_id = params[:comment].delete(:post_id)
		@comment = Comment.new(params[:comment])
		@comment.post_id = post_id
		@comment.save

		flash[:message] = "#{@comment.author} has a comment"

		redirect_to post_path(@comment.post)
	end
end
