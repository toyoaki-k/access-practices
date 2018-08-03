defmodule ElixirPracticesTest do
  use ExUnit.Case
  doctest ElixirPractices

  test "greets the world" do
    assert ElixirPractices.hello() == :world
  end
end
