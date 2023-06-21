defmodule EKTest do
  use ExUnit.Case
  doctest EK

  test "greets the world" do
    assert EK.hello() == :world
  end
end
