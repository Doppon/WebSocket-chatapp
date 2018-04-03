class WebsocketChatController < WebsocketRails::BaseController

  def recieve_message
    # クライアントからメッセージを取得
    recieve_message = message()

    # websocket_chatイベントで接続しているクライアントにブロードキャスト(送信)
    broadcast_message(:websocket_chat, recieve_message)
  end

end
