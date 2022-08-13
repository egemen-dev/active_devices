class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
    online
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    offline
  end

  def online
    ActionCable.server.broadcast "room_channel", { message: current_device.name + ' is now online' }
    current_device.update!(is_active: true)
  end
  
  def offline
    ActionCable.server.broadcast "room_channel", { message: "I'm offline" }
    ActionCable.server.broadcast "room_channel", { message: current_device.name + ' is logged out !!!!!!!!!!' }
    current_device.update!(is_active: false)
  end

  def receive(data)
    ActionCable.server.broadcast("room_channel", "hello")
    ActionCable.server.broadcast "room_channel", { message: "hello" }
  end
end

# deneme0001's unique id: tPE9rs

# deneme0001's password: mh6K5nfQXvpq