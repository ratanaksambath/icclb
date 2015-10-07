class AddCodeIdToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :code_id, :integer
    add_index :videos, :code_id
  end
end
