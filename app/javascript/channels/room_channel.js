import consumer from "channels/consumer"

// const room = document.getElementById('my_devices')
// const room_id = room.getAttribute('data-room-id')

consumer.subscriptions.create("RoomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log('Connected to room '+ "channel")
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    console.log(data)
  }
});
