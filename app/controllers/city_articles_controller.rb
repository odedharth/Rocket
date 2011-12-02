class CityArticlesController < ApplicationController
  # GET /city_articles
  # GET /city_articles.json
  def index
    @city_articles = CityArticle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @city_articles }
    end
  end

  # GET /city_articles/1
  # GET /city_articles/1.json
  def show
    @city_article = CityArticle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @city_article }
    end
  end

  # GET /city_articles/new
  # GET /city_articles/new.json
  def new
    @city_article = CityArticle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @city_article }
    end
  end

  # GET /city_articles/1/edit
  def edit
    @city_article = CityArticle.find(params[:id])
  end

  # POST /city_articles
  # POST /city_articles.json
  def create
    @city_article = CityArticle.new(params[:city_article])

    respond_to do |format|
      if @city_article.save
        format.html { redirect_to @city_article, notice: 'City article was successfully created.' }
        format.json { render json: @city_article, status: :created, location: @city_article }
      else
        format.html { render action: "new" }
        format.json { render json: @city_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /city_articles/1
  # PUT /city_articles/1.json
  def update
    @city_article = CityArticle.find(params[:id])

    respond_to do |format|
      if @city_article.update_attributes(params[:city_article])
        format.html { redirect_to @city_article, notice: 'City article was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @city_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /city_articles/1
  # DELETE /city_articles/1.json
  def destroy
    @city_article = CityArticle.find(params[:id])
    @city_article.destroy

    respond_to do |format|
      format.html { redirect_to city_articles_url }
      format.json { head :ok }
    end
  end
end
