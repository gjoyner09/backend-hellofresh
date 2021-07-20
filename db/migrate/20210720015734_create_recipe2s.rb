class CreateRecipe2s < ActiveRecord::Migration[6.1]
  def change
    create_table :recipe2s do |t|
      t.string :title
      t.text :ingredients
      t.text :instructions
      t.text :nutritional_info
      t.string :classification

      t.timestamps
    end
  end
end
