use Mix.Config

# Pull in the `dev` configuration from the `ranch_hand_web` application
# when running on the `host` target.
import_config "../../ranch_hand_web/config/dev.exs"

# Disable `:code_reloader` when running from `ranch_hand_firmware` because
# it is declared as `only: :dev` in the `ranch_hand_web` application,
# so it won't be available when `ranch_hand_web` is added as a dependency.
config :ranch_hand_web, RanchHandWeb.Endpoint,
  code_reloader: false,
  server: true

config :logger, backends: [:console]

config :logger,
  level: :debug

config :logger, :console,
  level: :debug,
  format: "[$level] $message\n"
