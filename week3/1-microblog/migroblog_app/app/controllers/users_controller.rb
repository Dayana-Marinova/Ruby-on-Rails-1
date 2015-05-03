class UsersController < BaseController

  def index
    User.all
  end

  def create
    User.create user_params
  end

  def show
    User.find user_id
  end

  def update
    User.update user_id, user_params
  end

  def destroy
    User.destroy user_id
  end

  private

  def user_id
    params[:id]
  end

  def user_params
    params.permit(
      :first_name,
      :password
    )
  end
end