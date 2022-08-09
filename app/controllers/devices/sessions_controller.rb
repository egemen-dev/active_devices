# frozen_string_literal: true

class Devices::SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params, only: [:create]
  after_action :is_active_true, only: [:create]
  before_action :is_active_false, only: [:destroy]

  # GET /resource/sign_in
  def new
    super
  end

  # POST /resource/sign_in
  def create
    super
  end

  # DELETE /resource/sign_out
  def destroy
    super
  end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  end

  def is_active_true
    device = Device.find_by(unique_id: params[:device][:unique_id])
    device.update_attribute("is_active", true)
  end
  
  def is_active_false
    current_device.update_attribute("is_active", false)
  end
end
