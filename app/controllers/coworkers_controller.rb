class CoworkersController < ApplicationController
  before_action :set_coworker, only: [:show, :update, :destroy]

  # GET /coworkers
  def index
    @coworkers = Coworker.name_like(params[:name]).
        order(first_name: order_direction, last_name: order_direction).all
    render json: @coworkers, include: params[:include]
  end

  # GET /coworkers/1
  def show
    render json: @coworker
  end

  # POST /coworkers
  def create
    @coworker = Coworker.new(coworker_params)

    if @coworker.save
      render json: @coworker, status: :created, location: @coworker
    else
      render json: @coworker.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /coworkers/1
  def update
    if @coworker.update(coworker_params)
      render json: @coworker
    else
      render json: @coworker.errors, status: :unprocessable_entity
    end
  end

  # DELETE /coworkers/1
  def destroy
    @coworker.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coworker
      @coworker = Coworker.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def coworker_params
      params.require(:coworker).permit(:email, :first_name, :last_name, :avatar_url)
    end

  def order_direction
    params[:order] || :asc
  end
end
