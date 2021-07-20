class CreateRecipe1s < ActiveRecord::Migration[6.1]
  def change
    create_table :recipe1s do |t|
      t.string :title
      t.text :ingredients
      t.text :instructions
      t.text :nutritional_info
      t.text :classification

      t.timestamps
    end
  end
end
