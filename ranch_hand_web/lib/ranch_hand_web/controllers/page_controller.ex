defmodule RanchHandWeb.PageController do
  use RanchHandWeb, :controller

  def index(conn, _params) do
    {:ok, temperature} = RanchHand.fetch_temperature()
    render(conn, "index.html", temperature: temperature)
  end
end
