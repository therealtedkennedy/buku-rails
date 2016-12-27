class EventsController < ApplicationController
	
	def show
		@event = Event.find(params[:id])

    end


	def new

	end

	def create
		@event = Event.new(event_params)

		logger.info "in create"
		logger.info @event

		@event.save
		redirect_to @event
	end



	private
		def event_params
			params.require(:events).permit(:title, :description)
		end
end
