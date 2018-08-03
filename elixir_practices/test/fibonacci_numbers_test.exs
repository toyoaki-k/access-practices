defmodule FibonacciNumbersTest do
  use ExUnit.Case
  doctest FibonacciNumbers

  test "sum of even numbers" do
    assert FibonacciNumbers.sum_of_even_numbers(1, 2, 0) == 4_613_732
  end
end
