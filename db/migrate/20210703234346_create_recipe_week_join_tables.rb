class CreateRecipeWeekJoinTables < ActiveRecord::Migration[6.1]
  def change
    create_table :recipe_week_join_tables do |t|
      t.references :menu, null: false, foreign_key: true
      t.references :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
