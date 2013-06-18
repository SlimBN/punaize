class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :preview
      t.text :content
      t.string :slug
      t.integer :user_id
      t.integer :blog_category_id

      t.timestamps
    end
  end
end
