class CoworkersController < ApplicationController
  def index
    render json: Coworker.all.suffle(3)
  end
end
