class AddAuthorTable < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.text :bio
      t.date :born
      t.date :died

      t.timestamps
    end
  end
end
