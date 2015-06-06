class CreateInviteCodes < ActiveRecord::Migration
  def change
    create_table :invite_codes do |t|
      t.string :code
      t.boolean :used

      t.timestamps null: false
    end
  end
end
