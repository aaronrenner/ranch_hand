# Since configuration is shared in umbrella projects, this file
# should only configure the :ranch_hand_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :ranch_hand_web, RanchHandWeb.Endpoint,
  http: [port: 4002],
  server: false

config :logger, :level, :warn

# Put constantizer in dynamic mode
config :constantizer, resolve_at_compile_time: false
