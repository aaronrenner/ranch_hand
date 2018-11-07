defmodule RanchHand do
  @moduledoc """
  Main API for RanchHand.
  """
  import Constantizer

  alias RanchHand.DefaultBackend
  alias RanchHand.Temperature

  @behaviour RanchHand.Backend

  @doc """
  Fetch the temperature for a sensor
  """
  @spec fetch_temperature :: {:ok, Temperature.t()} | {:error, :not_availble}
  def fetch_temperature do
    backend().fetch_temperature()
  end

  defconstp backend do
    Application.get_env(:ranch_hand, :backend, DefaultBackend)
  end
end
