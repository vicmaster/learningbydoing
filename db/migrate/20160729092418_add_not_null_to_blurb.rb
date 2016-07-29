class AddNotNullToBlurb < ActiveRecord::Migration
  def change
    Book.update_all({blurb: ''}, {blurb: nil})
    change_column :books, :blurb, :text, null: false, default: ''
  end
end
