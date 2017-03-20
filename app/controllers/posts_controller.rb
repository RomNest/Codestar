class PostsController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy]


	def index
		@posts = Post.all
	end

	def show;end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(posts_params)

		if @post.save
			redirect_to post_path(@post)
		else
			render 'new'
		end
	end

	def update

	end

	def destroy

	end

	private 

		def find_post
			@post = Post.find(params[:id])
		end

		def posts_params
			params.require(:post).permit(:title, :description)
		end
end
