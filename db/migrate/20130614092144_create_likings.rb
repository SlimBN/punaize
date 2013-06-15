class CreateLikings < ActiveRecord::Migration
  def change
    create_table :likings do |t|
      t.integer :pun_id
      t.integer :user_id

      t.timestamps
    end

    add_index :likings, :pun_id
	add_index :likings, :user_id
  end
end
