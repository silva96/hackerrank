defmodule CountingValleysTest do
  use ExUnit.Case
  doctest CountingValleys

  test "Calculates correct amount of valleys" do
    assert CountingValleys.count_valleys("UDDDUDUU") == 1
  end
end
