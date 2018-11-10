defmodule RanchHandWeb.PageControllerTest do
  use RanchHandWeb.ConnCase
  use ExUnitProperties

  import Mox

  alias RanchHand.Temperature
  alias RanchHandWeb.MockRanchHand

  setup [:set_mox_from_context, :verify_on_exit!]

  property "GET / renders the current temperature", %{conn: conn} do
    check all temperature <- temperature() do
      expect(MockRanchHand, :fetch_temperature, fn -> {:ok, temperature} end)
      conn = get(conn, "/")
      assert html_response(conn, 200) =~ to_string(temperature.value)
    end
  end

  defp temperature do
    %{
      scale: member_of([:fahrenheit]),
      value: integer()
    }
    |> fixed_map
    |> map(&Temperature.new(&1.value, &1.scale))
  end
end
