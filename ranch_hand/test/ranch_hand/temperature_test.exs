defmodule RanchHand.TemperatureTest do
  use ExUnit.Case, async: true

  alias RanchHand.Temperature

  test "new/2 with a fahrenheit value" do
    scale = :fahrenheit
    value = 32.4

    assert %Temperature{value: ^value, scale: ^scale} = Temperature.new(value, scale)
  end

  test "new/2 with a celsius value" do
    scale = :celsius
    value = 10.4

    assert %Temperature{value: ^value, scale: ^scale} = Temperature.new(value, scale)
  end

  test "new/2 with an invalid scale" do
    scale = :invalid
    value = 10.4

    assert_raise FunctionClauseError, fn ->
      Temperature.new(value, scale)
    end
  end

  test "new/2 with an invalid value" do
    scale = :celsius
    value = "bar"

    assert_raise FunctionClauseError, fn ->
      Temperature.new(value, scale)
    end
  end
end
