defmodule RanchHand.Temperature do
  @moduledoc """
  A temperature value
  """

  @type scale :: :fahrenheit | :celsius
  @type value :: number()
  @type t :: %__MODULE__{
          scale: scale,
          value: value
        }

  @scales [:fahrenheit, :celsius]

  defstruct [:scale, :value]

  @doc """
  Builds a new temperature value.
  """
  @spec new(value, scale) :: t
  def new(value, scale) when is_number(value) and scale in @scales do
    %__MODULE__{value: value, scale: scale}
  end
end
