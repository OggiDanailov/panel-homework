class ArticlesController < ApplicationController
  
  before_action :authenticate_instructor!, :except => [:index, :show]

  def current_article
    @article = Article.find(params[:id])
  end

  def index
  	@articles = Article.all
  end

  def create
  	article = Article.new(article_params)
  	article.instructor_id = current_instructor.id 
  	if article.save
  		redirect_to "/articles"
  	else
  		render "/insstructor/#{current_instructor.id}"
  	end
  end

  def show
    current_article
  end

  def edit
    current_article
  end

  def update
    @article = current_article
    if @article.update(article_params)
      redirect_to "/articles/#{@article.id}"
    else
      render ""
    end
  end

  def destroy
    @article = current_article
    @article.destroy
      redirect_to "/articles"
  end



  private
  def article_params
  	params.require(:article).permit(:title, :content, :instructor_id, :category)
  end

end
