defmodule EvenFibonacciNumbers do
  require Integer

  @default_sum 0
  @max_value 4_000_000

  def calculate(first_number, second_number) do
    sum = sum_of_even_fibonacci(first_number, second_number, @default_sum)
    IO.puts("result:#{sum}")
  end

  def sum_of_even_fibonacci(_x, y, sum) when y >= @max_value do
    sum
  end

  def sum_of_even_fibonacci(x, y, sum) when Integer.is_even(y) do
    sum_of_even_fibonacci(y, x + y, y + sum)
  end

  def sum_of_even_fibonacci(x, y, sum) do
    sum_of_even_fibonacci(y, x + y, sum)
  end
end
