defmodule Geometry do
  def area({:rectangle, a, b}) do
    a * b
  end

  def area({:circle, r}) do
    3.14 * r * r
  end

  def area(:square, a) do
    a * a
  end

  def area(unknown) do
    {:error, "unknown shape #{inspect(unknown)}"}
  end
end
