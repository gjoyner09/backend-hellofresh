class CreateMenu2s < ActiveRecord::Migration[6.1]
  def change
    create_table :menu2s do |t|
      t.date :week

      t.timestamps
    end
  end
end
