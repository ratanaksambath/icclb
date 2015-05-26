class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :s3
      t.string :server

      t.timestamps null: false
    end
  end
end
