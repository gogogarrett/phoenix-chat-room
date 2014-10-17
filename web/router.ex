defmodule ChatRoom.Router do
  use Phoenix.Router
  use Phoenix.Router.Socket, mount: "/ws"

  scope "/" do
    # Use the default browser stack.
    pipe_through :browser

    get "/", ChatRoom.PageController, :index, as: :pages
  end
  channel "lobby", ChatRoom.Chat

  # Other scopes may use custom stacks.
  # scope "/api" do
  #   pipe_through :api
  # end
end
