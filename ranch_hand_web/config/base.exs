use Mix.Config

# General application configuration
config :ranch_hand_web,
  generators: [context_app: false]

# Configures the endpoint
config :ranch_hand_web, RanchHandWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zUX8DKEtiha/22S5WeMOOBU15ikpoTOxhhmx+hIhdni8+Z/8+QLT6CFfp4xUw4Ki",
  render_errors: [view: RanchHandWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: RanchHandWeb.PubSub, adapter: Phoenix.PubSub.PG2]

config :phoenix, :json_library, Jason
