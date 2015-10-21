class ChangeS3TypeToBoolean < ActiveRecord::Migration
  def change
    change_column :videos, :s3, 'boolean USING CAST(s3 AS boolean)'
  end
end
