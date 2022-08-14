class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "online"
    online
  end

  def unsubscribed
    offline
  end

  def online
    ActionCable.server.broadcast "room_channel", { message: current_device.name + ' is now online' }
    current_device.update(is_active: true)
  end
  
  def offline
    current_device.update(is_active: false)
    ActionCable.server.broadcast "room_channel", { message: "I'm offline" }
    ActionCable.server.broadcast "room_channel", { message: current_device.name + ' is logged out !!!!!!!!!!' }
  end

  def receive(data)
  end
end

# deneme0001's unique id: tPE9rs

# deneme0001's password: mh6K5nfQXvpq