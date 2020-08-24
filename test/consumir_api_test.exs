defmodule ConsumirApiTest do
  use ExUnit.Case
  doctest ConsumirApi

  test "greets the world" do
    assert ConsumirApi.hello() == :world
  end
end
