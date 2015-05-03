class CommentsController < BaseController

  def index
    Comment.all
  end

  def create
    Comment.create comment_params
  end

  def show
    Comment.find comment_id
  end

  def update
    Comment.update comment_id, comment_params
  end

  def destroy
    Comment.destroy comment_id
  end

  private

  def comment_id
    params[:id]
  end

  def comment_params
    params.permit(
      :first_name,
      :password
    )
  end

end