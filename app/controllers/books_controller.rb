class BooksController < ApplicationController

  def index

    # raise
    @books = Book.all
    #
    respond_to do |format|
     format.html
     format.text
     format.json


     format.csv do
       render plain: Book.generate_csv(@books)
     end

     render json: @books

    end

  end
end
