class Users::ImagesController < ApplicationController
  before_action :set_user

  def index
  end

  def create
    @user.images.create(image_params)
    flash[:notice] = '更新に成功しました'
    redirect_to user_url(@user)
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def image_params
    params.require(:image).permit(:file)
  end
end
