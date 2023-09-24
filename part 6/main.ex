## Conditional loop (Recursion)
defmodule Part6 do
  def print(0), do: :ok

  def print(n) do
    print(n - 1)
    IO.puts(n)
  end

  def sum([]), do: 0

  def sum([head | tail]) do
    head + sum(tail)
  end

  ## sum([1,2,3]) => h = 1, t = [2,3]
  ## sum([2,3]) => h = 2, t = [3]
  ## sum([3]) => h = 3, t = []
  ## sum([]) => 0

  def loop_forever do
    loop_forever()
  end

  def start(n) do
    start = :os.system_time(:seconds)
    fib = getNumber(n)
    finish = :os.system_time(:seconds)
    diff = finish - start
    IO.puts("Fib is #{fib}")
    IO.puts("Time taken is #{diff}")
  end

  def getNumber(n) when n < 0, do: :error
  def getNumber(n), do: getNumber(n, 1, 0)
  defp getNumber(0, _, result), do: result
  defp getNumber(n, next, result), do: getNumber(n - 1, result + next, next)

  # def getNumber(0), do: 0
  # def getNumber(1), do: 1
  # def getNumber(n) when n < 0, do: :error

  # def getNumber(n) do
  #   getNumber(n - 1) + getNumber(n - 2)
  # end

  ## getNumber(5) => getNumber(4) + getNumber(3)
  ## getNumber(4) => getNumber(3) + getNumber(2)
  ## getNumber(3) => getNumber(2) + getNumber(1) [1]
  ## getNumber(2) => getNumber(1)[1] + getNumber(0) [0]
  ## getNumber(1) => 1
  ## getNumber(0) => 0

  ## (getNumber(4) + getNumber(3)) + (getNumber(3) + getNumber(2) + (getNumber(2) + getNumber(1) + (getNumber(1) + getNumber(0))))
  def reducer do
    Enum.reduce([1, 2, 3], 0, fn x, acc -> x + acc end)
  end

  def normal_loop do
    for x <- [1, 2, 3], do: x * x
  end

  def nested_loop do
    for x <- [1, 2, 3], y <- [4, 5, 6], do: {x, y, x * y}
  end

  ## x = 0, y = 11 => 11
  ## x = 11, y = 12 => 23
  ## x = 23, y = 13 => 36
end
