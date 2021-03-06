class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :icon
      t.string :slug
      t.text :description
      t.boolean :activated

      t.timestamps
    end
  end
end
