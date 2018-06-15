class ApplicationController < ActionController::Base

  # render all chats
  def chats
    @chats = Chat.all.order('created_at asc')
    render 'layouts/chats'
  end

  def create_chat
    chat = Chat.create(chat_params)
    ActionCable.server.broadcast 'chat_channel', text: chat.text, time: chat.created_at.strftime('%d-%m-%Y %r')
    redirect_to root_path
  end

  private

  def chat_params
    params.require(:chat).permit(:text)
  end
end
