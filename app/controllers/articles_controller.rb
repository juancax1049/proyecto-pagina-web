class ArticlesController < ApplicationController
	before_action :authenticate_user!, except: [:show,:index]
	before_action :set_article, except: [:index,:new]
	#GET/articles
	def index
	    @articles = Article.all
	    
	end
    #GET: /articles/:id
	def show
	    	  	
	end
	#GET: /articles/new
	def new
    @article = Article.new		
	end
	def edit
		
	end
	#POST: /articles
	def create
	@article = current_user.article.new(article_params)
		if @article.save
			redirect_to @article
		else
			render :new
		end
		
	end
    #DELETE: /articles/:id
	def destroy
		@article.destroy
		redirect_to articles_path
	end
	#PUT: /articles/:id
	def update
		if @article.update(article_params)
			redirect_to @article
		else
			render :edit
		end
	end
	
	private
	
	def set_article
		@article = Article.find_by_id(params[:id])
	end
			 
	def article_params
		params.require(:article).permit(:nombre,:marca,:tipo,:descripcion)		
	end
end