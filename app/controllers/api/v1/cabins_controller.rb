class Api::V1::CabinsController < ApplicationController

  def index
    cabins = Cabin.all
    render json: cabins
  end

end
