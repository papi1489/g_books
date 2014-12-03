class PagesController < ApplicationController
  def home
      @titre = "GBooks"
	  @books = Book.all
  end
  
end
