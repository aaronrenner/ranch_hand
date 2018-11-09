# Since configuration is shared in umbrella projects, this file
# should only configure the :ranch_hand_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# Splitting the base config out into a separate file allows us to import
# each of the configs separately in the `eye_fw` app, without pulling in
# the environment-specific ones.
import_config "base.exs"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
