class ReviewsController < ApplicationController
        def new
            @review=Review.new
        end 
        def create 
            @review=Review.create(review_params)
            @review.account_id = current_user.id
            redirect_to listing_path(@reservation.id)
        end 
        def edit 
            @review=reservation.find(params[:id])
            @review.update(review_params)
        end 
        def update 
            @review=Review.find(params[:id])
            @review.update(review_params)
            @review.account_id = current_user.id
            redirect_to listing_path(@reservation.id)
        end 
        def destroy
            @review=Review.find(params[:id])
            @review.destroy
        end 
        private 
        def reservation_params
        params.require(:reservation).permit(:title,:rating,:description)
       end
end
    

