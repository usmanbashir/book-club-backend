class ReviewsController < ApplicationController

    before_action :authenticate_user!

    def index 
        @reviews = Review.all

        render json: @reviews
    end

    def show 
        @book = Book.find(params[:id])
        @reviews = @book.reviews

        render json: @reviews
    end

    def new
        @review = Review.new

        render json: @reviews
    end

    def create 
        @review = Review.create(params.require(:review).permit(
            :title, :description, :rating, :user_id, :book_id))

        render json: @reviews
    end

    def destroy
        @review = Review.find(params[:id])
        @review.destroy

        render json: @reviews
    end

end
 