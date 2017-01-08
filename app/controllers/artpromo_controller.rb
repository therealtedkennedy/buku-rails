class ArtpromoController < ApplicationController

	before_filter :authenticate_user!

	def new

		

		logger.info "in new user" 
		logger.info current_user.id

		@artpromo = current_user.artpromos.build
		#@artpromo = Artpromo.new 
		
		logger.info @artpromo



	end

	def create
		@Artistspromoter= current_user.artpromo.build(artpromo_params)

		#@artpromo = Artpromo.new(artpromo_params)



		logger.info "in create"
		logger.info @Artistspromoter

		#respond_to do |format|

			#if artist.promo
		@Artistspromoter.save
		redirect_to @Artistspromoter


	end

	def show
		@artpromo = Artpromo.find(params[:id])

    end



	private
		def event_params
			params.require(:Artpromo).permit(:name, :email)
		end

end
