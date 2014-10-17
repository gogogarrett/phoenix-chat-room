use Mix.Config

# ## SSL Support
#
# To get SSL working, you will need to set:
#
#     https: [port: 443,
#             keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#             certfile: System.get_env("SOME_APP_SSL_CERT_PATH")]
#
# Where those two env variables point to a file on
# disk for the key and cert.

config :phoenix, ChatRoom.Router,
  url: [host: "example.com"],
  http: [port: System.get_env("PORT")],
  secret_key_base: "1DtyLEKIS8bxLE0i6Jh4EJYdo2qX2N5Ahh2f+5NpGhadi+CWsFIqEVwz3Xlj9Ljn7Q6tog9QWR1gg6/7lMmjyg=="

config :logger, :console,
  level: :info
