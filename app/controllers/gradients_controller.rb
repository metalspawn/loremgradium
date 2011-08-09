class GradientsController < ApplicationController

  def create
    filename = "test.jpg"
    cmd = `convert -size #{params[:width]}x#{params[:height]} gradient:#{params[:primary]}-#{params[:secondary]} #{Rails.root}/public/images/gradients/#{filename}`
    image = File.open(Rails.root + "public/images/gradients/#{filename}")
    send_data(image.read, {type: 'image/jpeg', disposition: 'inline'})
  end
end
