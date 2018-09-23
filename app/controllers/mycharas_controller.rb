class MycharasController < ApplicationController
  before_action :set_image

  def create
    @image.build_mychara_image(mychara: @mychara)
    redirect_to user_url(current_user)
  end

  private

  def set_image
    @image = current_user.images.find(params.require(:mychara_image)[:image_id])
  end

  def set_mychara
    @mychara = current_user.mycharas.find(params.require(:mychara_image)[:mychara_id])
  end
end
