class ArtpromoController < ApplicationController

	before_filter :authenticate_user!

	def new

		@artpromo = current_user.artpromos.build
		#@artpromo = Artpromo.new 
		
		logger.info @artpromo

	end

	def create


		@Artistspromoter= current_user.artpromos.create(artpromo_params)

	
		redirect_to dashboard_index_url

	end

	def show
		@artpromo = Artpromo.find(params[:id])

    end



	private
		def artpromo_params
			params.require(:artpromo).permit(:name, :email)
		end

end
