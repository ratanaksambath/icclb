class ChangeS3TypeToBoolean < ActiveRecord::Migration
  def change
    change_column :videos, :s3, :boolean, default: false
  end
end
