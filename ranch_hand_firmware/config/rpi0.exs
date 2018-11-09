use Mix.Config

# Pull in the `prod` configuration from the `ranch_hand_web` application
# when running on the `rpi0` target.
import_config "../../ranch_hand_web/config/prod.exs"

config :ranch_hand_web, RanchHandWeb.Endpoint,
  http: [port: 80],
  url: [host: "nerves.local", port: 80],
  # Start the server since we're running in a release instead of through `mix
  server: true,
  # We can't easily check the origin because the host you connect to might
  # end up being whatever the device's IP address is
  check_origin: false,
  # We don't load from system env because we bake it into the Nerves firmware either way
  load_from_system_env: false

# config :nerves_init_gadget,
#   ifname: "usb0",
#   address_method: :dhcpd,
#   mdns_domain: "nerves.local",
#   node_name: nil,
#   node_host: :mdns_domain,
#   ssh_console_port: 22

config :nerves_init_gadget,
  ifname: "wlan0",
  address_method: :dhcp,
  mdns_domain: "nerves.local",
  node_name: nil,
  node_host: :mdns_domain,
  ssh_console_port: 22
