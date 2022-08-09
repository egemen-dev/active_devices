class AddIsSeenToDevices < ActiveRecord::Migration[7.0]
  def change
    add_column :devices, :is_seen, :boolean
  end
end
