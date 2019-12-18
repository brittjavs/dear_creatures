class DonationsController < ApplicationController
    before_action :require_login
    
    def new
        @donation = Donation.new
    end

    def create
        
        @donation = current_user.donations.create(donation_params)
         if @donation
            if params[:donation][:quantity].empty? && params[:donation][:dollar_amount].empty?
                flash[:error] = "Please fill out quantity if donating an item or dollar amount if donating funds"
                render :new
            elsif !params[:donation][:quantity].empty? && !params[:donation][:dollar_amount].empty?
                flash[:warning] = "Please fill out only one - quantity if donating an item or dollar amount if donating funds"
                render :new
            else 
                if params[:donation][:quantity].empty?
                    NeededItem.update_funds(params[:donation][:shelter_id], params[:donation][:item_id], params[:donation][:dollar_amount])
                else
                    NeededItem.update_quantity(params[:donation][:shelter_id], params[:donation][:item_id], params[:donation][:quantity])
                end
            redirect_to shelter_path(@donation.shelter)
            end
        end
    end

    def index
        @money_donations = current_user.donations.money
        @item_donations = current_user.donations.not_money
    end

    private
    def donation_params
        params.require(:donation).permit(:shelter_id, :user_id, :item_id, :quantity, :dollar_amount)
    end
end
