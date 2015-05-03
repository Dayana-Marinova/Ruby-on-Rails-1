class PostsController < BaseController

  def index
    Post.all
  end

  def create
    Post.create post_params
  end

  def new
  end

  def edit
  end

  def show
    Post.find post_id
  end

  def update
    Post.update post_id, post_params
  end

  def destroy
    Post.destroy post_id
  end

  private

  def post_id
    params[:id]
  end

  def post_params
    params.permit(
      :title,
      :content
    )
  end
end