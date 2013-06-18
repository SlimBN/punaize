class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :content

      t.timestamps
    end

    create_table :puns_tags do |t|
      t.integer :pun_id
      t.integer :tag_id
    end

    add_index :tags, :content, :unique => true
    add_index :puns_tags, :pun_id
    add_index :puns_tags, :tag_id
  end
end
