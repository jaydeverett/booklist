class BooksController < ApplicationController

  def index

    # raise
    @books = Book.all
    #
    respond_to do |format|
     format.html
     format.text
    end

  end
end
