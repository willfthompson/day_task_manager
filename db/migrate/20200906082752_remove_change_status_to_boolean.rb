class RemoveChangeStatusToBoolean < ActiveRecord::Migration[6.0]
  def change
    remove_column :tasks, :status
  end
end
