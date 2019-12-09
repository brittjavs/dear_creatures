class DonationsController < ApplicationController
    def new
        @donation = Donation.new
    end

    def create
    end

    def index
        # binding.pry
        @donations = User.find(params[:user_id].donations)
        
    end

    private
    def donation_params
        params.require(:donation).permit(:shelter_id, :user_id, :item_id, :quantity)
    end
end
