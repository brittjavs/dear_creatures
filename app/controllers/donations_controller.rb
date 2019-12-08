class DonationsController < ApplicationController
    def new
        @donation = Donation.new
    end

    def create

            
    end

    private
    def donation_params
        params.require(:donation).permit(:shelter_id, :user_id, :item_id, :quantity)
    end
end
