class SheltersController < ApplicationController
    def index
        @shelters = Shelter.all
    end

    def show
        @user = current_user
        @shelter = Shelter.find(params[:id])
    end
    
end
