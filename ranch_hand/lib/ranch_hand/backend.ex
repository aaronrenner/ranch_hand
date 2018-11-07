defmodule RanchHand.Backend do
  @moduledoc false

  alias RanchHand.Temperature

  @callback fetch_temperature :: {:ok, Temperature.t()} | {:error, :not_availble}
end
