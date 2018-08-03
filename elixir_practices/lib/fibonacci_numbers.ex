defmodule FibonacciNumbers do
  require Integer

  @first_number 1
  @second_number 2
  @sum_accumlator 0

  @spec calculate_sum_of_even_numbers(integer) :: integer
  def calculate_sum_of_even_numbers(max_value) when is_number(max_value) do
    sum_of_even_numbers(@first_number, @second_number, @sum_accumlator, max_value)
  end

  defp sum_of_even_numbers(_x, y, sum, max_value) when y >= max_value do
    sum
  end

  defp sum_of_even_numbers(x, y, sum, max_value) when Integer.is_even(y) do
    sum_of_even_numbers(y, x + y, y + sum, max_value)
  end

  defp sum_of_even_numbers(x, y, sum, max_value) do
    sum_of_even_numbers(y, x + y, sum, max_value)
  end
end
