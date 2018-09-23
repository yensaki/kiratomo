class MycharaImagesController < ApplicationController
  before_action :set_image
  before_action :set_mychara

  def create
    MycharaImage.create!(image: @image, mychara: @mychara)
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
