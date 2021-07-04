class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :title, null: false
      t.text :ingredients, null: false
      t.text :instructions, null: false
      t.text :nutritional_info
      t.string :classification

      t.timestamps
    end
  end
end
