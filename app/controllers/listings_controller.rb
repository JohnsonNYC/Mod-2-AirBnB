class ListingsController < ApplicationController
    def index
        @listings= Listing.all
    end

    def show
        @listing= Listing.find(params[:id])
    end 

    def new
        @listing = Listing.new
    end

    def create
        @listing = Listing.new(listing_params)
        @listing.save
        
        flash[:errors]= @listing.errors.full_messages
        if @listing.valid?
            redirect_to listing_path(@listing)
        else 
            redirect_to new_listing_path
        end 
    end

    def edit
        @listing = Listing.find(params[:id])
    end

    def update 
        @listing = Listing.find(params[:id])
        @listing.update(listing_params)

        redirect_to listing_path(@listing)
    end

    private 
    def listing_params
        params.require(:listing).permit(:description, :rental_type, :ameneties, :user_id, :message_id)
    end
end
