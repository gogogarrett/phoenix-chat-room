# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the router
config :phoenix, ChatRoom.Router,
  url: [host: "localhost"],
  http: [port: System.get_env("PORT")],
  secret_key_base: "1DtyLEKIS8bxLE0i6Jh4EJYdo2qX2N5Ahh2f+5NpGhadi+CWsFIqEVwz3Xlj9Ljn7Q6tog9QWR1gg6/7lMmjyg==",
  catch_errors: true,
  debug_errors: false,
  error_controller: ChatRoom.PageController

# Session configuration
config :phoenix, ChatRoom.Router,
  session: [store: :cookie,
            key: "_chat_room_key"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
