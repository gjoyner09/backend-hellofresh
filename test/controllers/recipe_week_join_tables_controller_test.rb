require "test_helper"

class RecipeWeekJoinTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe_week_join_table = recipe_week_join_tables(:one)
  end

  test "should get index" do
    get recipe_week_join_tables_url, as: :json
    assert_response :success
  end

  test "should create recipe_week_join_table" do
    assert_difference('RecipeWeekJoinTable.count') do
      post recipe_week_join_tables_url, params: { recipe_week_join_table: { menu_id: @recipe_week_join_table.menu_id, recipe_id: @recipe_week_join_table.recipe_id } }, as: :json
    end

    assert_response 201
  end

  test "should show recipe_week_join_table" do
    get recipe_week_join_table_url(@recipe_week_join_table), as: :json
    assert_response :success
  end

  test "should update recipe_week_join_table" do
    patch recipe_week_join_table_url(@recipe_week_join_table), params: { recipe_week_join_table: { menu_id: @recipe_week_join_table.menu_id, recipe_id: @recipe_week_join_table.recipe_id } }, as: :json
    assert_response 200
  end

  test "should destroy recipe_week_join_table" do
    assert_difference('RecipeWeekJoinTable.count', -1) do
      delete recipe_week_join_table_url(@recipe_week_join_table), as: :json
    end

    assert_response 204
  end
end
