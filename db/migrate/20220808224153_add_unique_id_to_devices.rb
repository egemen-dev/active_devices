class AddUniqueIdToDevices < ActiveRecord::Migration[7.0]
  def change
    add_column :devices, :unique_id, :string
  end
end
