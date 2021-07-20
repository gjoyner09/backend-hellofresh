class Recipe2sController < ApplicationController
  before_action :set_recipe2, only: [:show, :update, :destroy]

  # GET /recipe2s
  def index
    @recipe2s = Recipe2.all

    render json: @recipe2s
  end

  # GET /recipe2s/1
  def show
    render json: @recipe2
  end

  # POST /recipe2s
  def create
    @recipe2 = Recipe2.new(recipe2_params)

    if @recipe2.save
      render json: @recipe2, status: :created, location: @recipe2
    else
      render json: @recipe2.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recipe2s/1
  def update
    if @recipe2.update(recipe2_params)
      render json: @recipe2
    else
      render json: @recipe2.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recipe2s/1
  def destroy
    @recipe2.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe2
      @recipe2 = Recipe2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recipe2_params
      params.require(:recipe2).permit(:title, :ingredients, :instructions, :nutritional_info, :classification)
    end
end
