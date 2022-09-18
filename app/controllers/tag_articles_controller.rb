class TagArticlesController < ApplicationController
  before_action :set_tag_article, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: %i[show index]

  # GET /tag_articles or /tag_articles.json
  def index
    @tag_articles = TagArticle.all
  end

  # GET /tag_articles/1 or /tag_articles/1.json
  def show
  end

  # GET /tag_articles/new
  def new
    @tag_article = TagArticle.new
  end

  # GET /tag_articles/1/edit
  def edit
  end

  # POST /tag_articles or /tag_articles.json
  def create
    @tag_article = TagArticle.new(tag_article_params)

    respond_to do |format|
      if @tag_article.save
        format.html { redirect_to tag_article_url(@tag_article), notice: "Tag article was successfully created." }
        format.json { render :show, status: :created, location: @tag_article }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tag_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tag_articles/1 or /tag_articles/1.json
  def update
    respond_to do |format|
      if @tag_article.update(tag_article_params)
        format.html { redirect_to tag_article_url(@tag_article), notice: "Tag article was successfully updated." }
        format.json { render :show, status: :ok, location: @tag_article }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tag_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tag_articles/1 or /tag_articles/1.json
  def destroy
    @tag_article.destroy

    respond_to do |format|
      format.html { redirect_to tag_articles_url, notice: "Tag article was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag_article
      @tag_article = TagArticle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tag_article_params
      params.require(:tag_article).permit(:article_id, :tag_id)
    end
end
