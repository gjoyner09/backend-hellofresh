class Menu2sController < ApplicationController
  before_action :set_menu2, only: [:show, :update, :destroy]

  # GET /menu2s
  def index
    @menu2s = Menu2.all

    render json: @menu2s
  end

  # GET /menu2s/1
  def show
    render json: @menu2
  end

  # POST /menu2s
  def create
    @menu2 = Menu2.new(menu2_params)

    if @menu2.save
      render json: @menu2, status: :created, location: @menu2
    else
      render json: @menu2.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /menu2s/1
  def update
    if @menu2.update(menu2_params)
      render json: @menu2
    else
      render json: @menu2.errors, status: :unprocessable_entity
    end
  end

  # DELETE /menu2s/1
  def destroy
    @menu2.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu2
      @menu2 = Menu2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def menu2_params
      params.require(:menu2).permit(:week)
    end
end
