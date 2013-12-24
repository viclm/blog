class ArticlesController < ApplicationController
  def index
    @articles = Article.limit(5).sort(:created_at.desc)
  end

  def show
    @article = Article.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @article }
    end
  end
end
