class PostsController < ApplicationController
	def index
		@post = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(params[:post])
		@post.save
		flash[:message] = "Successfully created"
		redirect_to posts_path
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		@post.update_attributes(params[:post])
		flash[:message] = "Updated Successfully"
		redirect_to posts_path
	end

	def destroy
		@post = Post.find(params[:id])
		@post.delete
		flash[:message] = "Deleted Successful"
		redirect_to posts_path
	end
end
