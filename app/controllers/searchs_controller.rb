class SearchsController < ApplicationController
  def search
      
  end
  
  def search_pesr
      
  end
  
  def search_resu
    
  if params[:elem_rech].nil?
  mot_chercher= "%"+params[:mot_cherch1]+"%"
  @books= Book.where("titre LIKE ? OR auteur LIKE ?", mot_chercher, mot_chercher)
  end
  if params[:mot_cherch1].nil?
  @elem_recherch=params[:elem_rech]
  mot_chercher2= params[:mot_cherch2]
  
  @books= Book.where("#{@elem_recherch} =?", mot_chercher2)
  end
  
  end
   
end