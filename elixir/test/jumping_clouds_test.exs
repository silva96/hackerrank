defmodule JumpingCloudsTest do
  use ExUnit.Case
  doctest JumpingClouds

  test "It jumps correctly on the clouds of Sample Input 0" do
    clouds = "0 0 1 0 0 1 0"
    clouds_array = String.split(clouds)
    assert JumpingClouds.jump(clouds_array, length(clouds_array), true) == 4
  end

  test "It jumps correctly on the clouds of Sample Input 1" do
    clouds = "0 0 0 0 1 0"
    clouds_array = String.split(clouds)
    assert JumpingClouds.jump(clouds_array, length(clouds_array), true) == 3
  end

  test "It jumps correctly on the clouds of Sample Input 2" do
    clouds = "0 0 0 1 0 0"
    clouds_array = String.split(clouds)
    assert JumpingClouds.jump(clouds_array, length(clouds_array), true) == 3
  end
end
