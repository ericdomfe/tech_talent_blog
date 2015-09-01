class BloPostsController < ApplicationController
  before_action :set_blo_post, only: [:show, :edit, :update, :destroy]

  # GET /blo_posts
  # GET /blo_posts.json
  def index
    @blo_posts = BloPost.all
  end

  # GET /blo_posts/1
  # GET /blo_posts/1.json
  def show
  end

  # GET /blo_posts/new
  def new
    @blo_post = BloPost.new
  end

  # GET /blo_posts/1/edit
  def edit
  end

  # POST /blo_posts
  # POST /blo_posts.json
  def create
    @blo_post = BloPost.new(blo_post_params)

    respond_to do |format|
      if @blo_post.save
        format.html { redirect_to @blo_post, notice: 'Blo post was successfully created.' }
        format.json { render :show, status: :created, location: @blo_post }
      else
        format.html { render :new }
        format.json { render json: @blo_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blo_posts/1
  # PATCH/PUT /blo_posts/1.json
  def update
    respond_to do |format|
      if @blo_post.update(blo_post_params)
        format.html { redirect_to @blo_post, notice: 'Blo post was successfully updated.' }
        format.json { render :show, status: :ok, location: @blo_post }
      else
        format.html { render :edit }
        format.json { render json: @blo_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blo_posts/1
  # DELETE /blo_posts/1.json
  def destroy
    @blo_post.destroy
    respond_to do |format|
      format.html { redirect_to blo_posts_url, notice: 'Blo post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blo_post
      @blo_post = BloPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blo_post_params
      params.require(:blo_post).permit(:title, :author, :blog_entry)
    end
end
