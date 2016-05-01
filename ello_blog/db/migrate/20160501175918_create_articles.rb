class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :author_id, null: false
      t.integer :category_id, null: false
      t.string :title, null: false
      t.text :body, null: false
      t.integer :num_likes
      t.string :header_img_path

      t.timestamps null: false
    end
  end
end
