class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :url
			t.integer :user_id
      t.timestamps null: false
      

      t.references :user, index: true, foreign_key: true
    end
  end
end



