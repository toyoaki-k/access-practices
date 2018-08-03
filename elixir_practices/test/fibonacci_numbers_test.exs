defmodule FibonacciNumbersTest do
  use ExUnit.Case
  doctest FibonacciNumbers

  test "sum of even numbers" do
    assert FibonacciNumbers.calculate_sum_of_even_numbers(4_000_000) == 4_613_732
  end
end
