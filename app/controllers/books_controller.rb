class BooksController < ApplicationController
    def index
        @books = Book.all

        render json: @books
    end

    def show
        @book = Book.find(params[:id])
        
        render json: @book
    end

    def new
        @book =  Book.new

        render json: @book
    end

    def create

        @book = Book.create(params.require(:book).permit(:title, :author, :genre, :publishedOn, :current, :meeting_date, :meeting_location, :user_id))

        render json: @book
    end

    def edit
        @book = Book.find(params[:id])

        render json: @book
    end

    def update
        @book = Book.find(params[:id])
        @book.update(params.require(:book).permit(:title, :author, :genre, :publishedOn, :current, :meeting_date, :meeting_location))
        
            render json: @book
    end

    def destroy
        @book = Book.find(params[:id])
        @book.destroy

        render json: @book
    end
end
