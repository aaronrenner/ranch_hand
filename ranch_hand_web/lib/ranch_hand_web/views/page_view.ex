defmodule RanchHandWeb.PageView do
  use RanchHandWeb, :view

  alias RanchHand.Temperature

  def temperature(%Temperature{value: value, scale: :fahrenheit}) do
    "#{value}°F"
  end
end
