defmodule RanchHandWeb.PageController do
  use RanchHandWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
