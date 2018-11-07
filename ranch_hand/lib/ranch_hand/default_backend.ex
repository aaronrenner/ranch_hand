defmodule RanchHand.DefaultBackend do
  @moduledoc false

  alias RanchHand.Temperature

  @behaviour RanchHand.Backend

  @spec fetch_temperature :: {:ok, Temperature.t()} | {:error, :not_availble}
  def fetch_temperature do
    {:ok, Temperature.new(32, :fahrenheit)}
  end
end
