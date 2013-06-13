class AddTagListToPuns < ActiveRecord::Migration
  def change
    add_column :puns, :tag_list, :string
  end
end
