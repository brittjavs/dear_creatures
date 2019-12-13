class DonationsController < ApplicationController
    def new
        @donation = Donation.new
    end

    def create
        
        @donation = current_user.donations.create(donation_params)
         if @donation
             redirect_to shelter_path(@donation.shelter)
          else
              render :new
          end
    end

    def index
        @user = current_user
        @donations = current_user.donations.all
    end

    private
    def donation_params
        params.require(:donation).permit(:shelter_id, :user_id, :item_id, :quantity)
    end
end
