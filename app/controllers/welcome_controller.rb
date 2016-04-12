class WelcomeController < ApplicationController
  def index
  	@homestate = "California"
  	@countries = ["Croatia","Peru","Georgia"]
  	@images = ["peru1.jpg","llama-hill.jpg","llamahuh.jpg","llamalove.jpg"]

  	@image_hash = {"Llama Pichu" => "peru1.jpg", "Llama on a Hill" => "llama-hill.jpg", "Llama confusion" => "llamahuh.jpg", "Llama Ffama-ly" => "llamalove.jpg"}
  end

  def about
  	@color = params[:color]
  	@size = params[:size].to_i
  end
end





