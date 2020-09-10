class ReviewsController < ApplicationController
    before_action :find_review, only: [:edit, :update, :destroy]
    
    def new
       @review = Review.new
    end

    def create
        @review = Review.create(review_params)
        if @review.valid?
            redirect_to restaurant_path(@current_restaurant)
        else
            flash[:review_errors] = @review.errors.full_messages 
            redirect_to new_review_path
        end
    end

    def edit
       
    end

    def update
      if @review.update(review_params)
        redirect_to review_path(@review)
      else
        flash[:review_errors] = @review.errors.full_messages 
            redirect_to edit_review_path
      end
    end

    def destroy
        @review.destroy
        redirect_to review_path
    end

    private 

    def review_params
        params.require(:review).permit(:restaurant_id, :wholesaler_id, :star_rating, :written_review)
    end

    def find_review
        @review = Review.find(params[:id])
    end

end
