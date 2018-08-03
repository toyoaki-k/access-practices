defmodule FibonacciNumbers do
  require Integer

  @max_value 4_000_000

  def sum_of_even_numbers(_x, y, sum) when y >= @max_value do
    sum
  end

  def sum_of_even_numbers(x, y, sum) when Integer.is_even(y) do
    sum_of_even_numbers(y, x + y, y + sum)
  end

  def sum_of_even_numbers(x, y, sum) do
    sum_of_even_numbers(y, x + y, sum)
  end
end
