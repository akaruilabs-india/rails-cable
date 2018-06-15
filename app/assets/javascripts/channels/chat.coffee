App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('.chats').append '<div class="alert alert-secondary" role="alert">' + data.text + '<p class="float-right">' + data.time + '</p></div>'
    window.scrollTo(0, document.body.scrollHeight)
