class ArticlesController < ApplicationController
    
    before_filter :authorize
    
    
#    http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
 
  def index
    @articles = Article.all
  end
 
  def show
    @article = Article.find(params[:id])
  end
 
  def new
    @article = Article.new
  end
 
  def edit
    @article = Article.find(params[:id])
  end
 
  def create
    @article = Article.new(article_params)
 
    if @article.save
      redirect_to articles_path
    else
      render 'new'
    end
  end
 
  def update
    @article = Article.find(params[:id])
 
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end
 
   def destroy
     @article = Article.find(params[:id])
     @article.destroy

     redirect_to articles_path
   end

# # DELETE /articles/1
# # DELETE /articles/1.json
#   def destroy
#     @article = Article.find(params[:id])
#     @article.destroy
#
#     respond_to do |format|
#       format.html { redirect_to @article }
#       format.json { head :no_content }
#       format.js   { render :layout => false }
#     end
#
#   end

 
  private
#   def set_article
#     @pony = Pony.find(params[:id])
# end

  def article_params
      params.require(:article).permit(:title, :text)
    end
end