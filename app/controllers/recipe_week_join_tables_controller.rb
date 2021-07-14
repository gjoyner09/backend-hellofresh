class RecipeWeekJoinTablesController < ApplicationController
  before_action :set_recipe_week_join_table, only: [:show, :update, :destroy]

  # GET /recipe_week_join_tables
  def index
    @recipe_week_join_tables = RecipeWeekJoinTable.all

    render json: @recipe_week_join_tables
  end

  # GET /recipe_week_join_tables/1
  def show
    render json: @recipe_week_join_table
  end

  # POST /recipe_week_join_tables
  def create
    if current_user
      @recipe_week_join_table = RecipeWeekJoinTable.new(recipe_week_join_table_params)
    end

    if current_user && @recipe_week_join_table.save
      render json: @recipe_week_join_table, status: :created, location: @recipe_week_join_table
    else
      render json: @recipe_week_join_table.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recipe_week_join_tables/1
  def update
    if current_user && @recipe_week_join_table.update(recipe_week_join_table_params)
      render json: @recipe_week_join_table
    else
      render json: @recipe_week_join_table.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recipe_week_join_tables/1
  def destroy
    if current_user
      @recipe_week_join_table.destroy
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe_week_join_table
      @recipe_week_join_table = RecipeWeekJoinTable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recipe_week_join_table_params
      params.require(:recipe_week_join_table).permit(:menu_id, :recipe_id)
    end
end
