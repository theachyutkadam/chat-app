import consumer from "./consumer"

consumer.subscriptions.create("RoomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("Recieving:")
    // console.log(data.content)
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    console.log("Recieving...")
    console.log(data.content)
    $('#msg').append('<div class="message"> ' + data.content + '</div>')
    $('#message_content').select();
  }

});

  let submit_messages;
  $(document).on('turbolinks:load', function () {
    submit_messages()
  })

  submit_messages = function () {
    $('#message_content').on('keydown', function (event) {
      if (event.keyCode == 13) {
        $('input').click()
        event.target.value = ''
        event.preventDefault()
      }
    })
}
