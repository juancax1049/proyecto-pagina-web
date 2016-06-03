class SearchController < ApplicationController
  def create
	  
      palabra = "%#{params[:keyword]}%"

	       @articles = Article.where("nombre LIKE ? OR marca LIKE ?",palabra,palabra)
	  
      
      respond_to do|format|
      		format.html {redirect_to root_path}
      		format.json {render json: @articles}
      		format.js
      end
    
  end
end
