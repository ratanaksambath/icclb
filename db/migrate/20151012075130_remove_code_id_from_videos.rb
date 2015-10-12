class RemoveCodeIdFromVideos < ActiveRecord::Migration
  def up
    remove_column :videos, :code_id
  end

  def down
    add_column :sections, :code_id, :integer
    add_index :sections, :code_id
    add_column :videos, :section_id, :integer
    add_index :videos, :section_id
  end
end
