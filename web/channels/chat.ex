defmodule ChatRoom.Chat do
  use Phoenix.Channel

  def join(socket, "chat", %{"user" => user}) do
    reply socket, "join", %{message: "Welcome to the Phoenix Chatroom: #{user}"}
    {:ok, socket}
  end

  def join(socket, _no, _message) do
    {:error, socket, :unauthorized}
  end

  def event(socket, "new:msg", %{"message" => message}) do
    reply socket, "new:msg", %{message: message}
    socket
  end
end
