class NoveltiesController < ApplicationController
	before_action :find_novelty, only: [:show, :edit, :update, :destroy]


	def index
		@novelties = Novelty.all
	end

	def show;end

	def new
		@novelty = Novelty.new
	end

	def create
		@novelty = Novelty.new(novelties_params)

		if @novelty.save
			redirect_to novelty_path(@novelty)
		else
			render 'new'
		end
	end

	def update;end

	def destroy;end

	private 

		def find_novelty
			@novelty = Novelty.find(params[:id])
		end

		def novelties_params
			params.require(:novelty).permit(:title, :description)
		end
end
