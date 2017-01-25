class DashboardController < ApplicationController
  def index

  	@user=current_user

    #to redirect when the user hasn't created an artist or a promoter 
  	if @user.artpromos.blank? 
  		redirect_to new_artpromo_url

   	end




    

  end
end
