class DonationsController < ApplicationController
    def new
        @donation = Donation.new
    end

    def create
         binding.pry
          @donation = current_user.donation.create(donation_params) 
            #  binding.pry
        if @donation
             redirect_to user_donations_path
         else
             render :new
         end
    end

    def index
        @donations = current_user.donations
    end

    private
    def donation_params
        params.require(:donation).permit(:shelter_id, :user_id, :item_id, :quantity)
    end
end
