class VacanciesController < ApplicationController
	before_action :find_vacancy, only: [:show, :edit, :update, :destroy]

	def index
		@vacancies = Vacancy.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 1)
	end

	def new
		@vacancy = Vacancy.new
	end

	def show;end

	def create
		@vacancy = Vacancy.new(vacancy_params)

		if @vacancy.save
			redirect_to vacancy_path(@vacancy)
		else
			render 'new'
		end
	end

	def update
		if @vacancy.update(vacancy_params)
			redirect_to @vacancy
		else
			render 'edit'
		end
	end

	def destroy
		@vacancy.destroy
		redirect_to root_path
	end

	private
	def find_vacancy
		@vacancy = Vacancy.find(params[:id])
	end

	def vacancy_params
		params.require(:vacancy).permit(:name, :country, :city, :description, :requirements, :responsibilities, :tools_and_techonologies)
	end
end
