class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "online"
    online
  end

  def unsubscribed
    offline
    stop_stream_from "online"
  end

  def online
    current_device.update(is_active: true)
    ActionCable.server.broadcast "room_channel", { message: current_device.name + ' is now ONLINE !' }
  end
  
  def offline
    current_device.update(is_active: false)
    ActionCable.server.broadcast "room_channel", { message: current_device.name + "offline !" }
  end

  def receive(data)
  end

end
