class EventsController < ApplicationController
	before_action :find_event, only: [:show, :edit, :update, :destroy]


	def index
		@events = Event.all.order("created_at DESC")
	end

	def show;end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new(events_params)

		if @event.save
			redirect_to event_path(@event)
		else
			render 'new'
		end
	end

	def update
		if @event.update(events_params)
			redirect_to @event
		else
			render 'edit'
		end
	end

	def destroy
		@event.destroy
		redirect_to root_path
	end

	private 

		def find_event
			@event = Event.find(params[:id])
		end

		def events_params
			params.require(:event).permit(:title, :description, :start, :end)
		end
end
