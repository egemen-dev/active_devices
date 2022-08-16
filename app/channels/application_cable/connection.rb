module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_device

    def connect
      self.current_device = find_verified_device
    end

    private

    def find_verified_device
      if verified_device = env['warden'].user(:device)
        verified_device
      else
        nil
      end
    end
  end
end
