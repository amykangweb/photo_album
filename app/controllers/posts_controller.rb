class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update, :destroy]
  before_action :check_user, only: [:new, :create, :edit, :update, :destroy]
  before_action :paginate, only: [:index, :create, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    if @post.save
      respond_to do |format|
        format.js { render 'index.js.erb' }
      end
    else
      respond_to do |format|
        format.js { render 'error.js.erb' }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def paginate
      @posts = Post.all.paginate(page: params[:page], per_page: 10)
    end

    def check_user
      unless current_user.admin
        redirect_to root_url, alert: "You are not authorized!"
      end
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:image, :caption)
    end
end
