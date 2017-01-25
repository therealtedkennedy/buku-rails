class EventsController < ApplicationController

	before_filter :authenticate_user!
	
	def show
		@event = Event.find(params[:id])

    end


	def new

	end

	def create

		current_artist
		
		@event= current_user.events.create(event_params)

		logger.info "in create"
		logger.info @event

		#@event.save
		redirect_to dashboard_index_url
	end



	private
		def event_params
			params.require(:events).permit(:title, :description)
		end
end
