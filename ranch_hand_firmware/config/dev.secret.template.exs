use Mix.Config

config :nerves_network, :default,
  wlan0: [
    ssid: "set me",
    psk: "set me",
    key_mgmt: :"WPA-PSK"
  ]
