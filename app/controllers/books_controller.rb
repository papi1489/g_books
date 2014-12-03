class BooksController < ApplicationController
   
   def index
    @books = Book.paginate(:page => params[:page])
	@titre = "Tous les Livres"
	@n =0
  end
  
  def show
    @book = Book.find(params[:id])
	@titre = @book.titre
  end

  def new
    @book = Book.new
    @titre = "Ajout de livre"
  end
  
  def edit
    @book = Book.find(params[:id])
    @titre = "Edition profil"
  end
  
  def create
     @book = Book.new(book_params)
     if @book.save
	 redirect_to @book
	 flash[:success] = "Livre ajouter avec succes"
     else
     render 'new'
    end
  end
  
  def update
  @book = Book.find(params[:id])
    if @book.update(book_params)
	redirect_to @book
    flash[:success] = "Bibliotheque actualise."
      
    else
      @titre = "Editer le livre"
      render 'edit'
    end
  end
  
    def destroy
	@book = Book.find(params[:id])
    @book.destroy
    flash[:success] = "Livre supprime."
    redirect_to books_path
    end
	
	private
	

    def book_params
      params.require(:book).permit(:titre, :auteur, :description, :rayon, :image)
    end 
	
end