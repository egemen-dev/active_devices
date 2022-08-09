class DevicesController < ApplicationController
  before_action :authenticate_user!

  def all_devices
    @devices = current_user.devices
  end

  def new_device
    device = current_user.devices.last

    # Check if sensitive information of the device seen or not
    if params[:id] == device.id.to_s && device.is_seen == false
      new_password = ([*"A".."Z"]+[*"a".."z"]+[*0..9]).shuffle.sample(12).join
      device.update_attribute("password", new_password)
      device.update_attribute("is_seen", true)
      if device.save!
        @device_info = {password: new_password, unique_id: device.unique_id, name: device.name} 
      else
        flash[:alert] = "Something went wrong, try again."
        redirect_to all_devices_path
      end
    else
      flash[:alert] = "You don't have a permission to see this device's information!"
      redirect_to all_devices_path
    end
  end
end