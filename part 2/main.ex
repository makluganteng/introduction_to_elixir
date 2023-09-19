defmodule Playground do
  def area(a, b) do
    a * b
  end

  # defining a module inside a module
  defmodule Circle do
    def area(r) do
      3.14 * r * r
    end
  end

  # shorter version of the above
  def area_of_circle!(r), do: 3.14 * r * r

  def enum do
    # result = 2, 4, 6
    Enum.map([1, 2, 3], fn x -> x * 2 end)
  end
end
