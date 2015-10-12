class AddCodeIdToSections < ActiveRecord::Migration
  def change
    add_column :sections, :code_id, :integer
    add_index :sections, :code_id
    add_column :videos, :section_id, :integer
    add_index :videos, :section_id
  end
end
