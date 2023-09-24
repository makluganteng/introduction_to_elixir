defmodule Part5 do
  def test(x) when is_number(x) and x < 0 do
    :negative
  end

  def test(0), do: :zero

  def test(x) when is_number(x) and x > 0 do
    :positive
  end
end

defmodule Part5Lambda do
  test = fn
    x when is_number(x) and x < 0 -> :negative
    x when is_number(x) and x > 0 -> :positive
    0 -> :zero
  end
end

defmodule Part5Conditional do
  ## if else statement
  def max(a, b) do
    if a >= b, do: a, else: b
  end

  ## unless else statement
  def max(a, b) do
    unless a >= b, do: b, else: a
  end

  def max(a, b) do
    cond do
      a >= b -> a
      true -> b
    end
  end

  def max(a, b) do
    case a >= b do
      true -> a
      false -> b
      _error -> :error
    end
  end
end

## number < atom < reference < function < port < pid < tuple < map < list < bitstring

## (==, !=, ===, !==, <, <=, >, >=)
## and or not

## Example on how to do some error check
defmodule Extract do
  def extract_user(user) do
    with {:ok, login} <- extract_login(user),
         {:ok, password} <- extract_password(user) do
      {:ok, %{login: login, password: password}}
    end
  end

  defp extract_login(%{"login" => login}), do: {:ok, login}
  defp extract_login(_), do: {:error, "login missing"}
  defp extract_password(%{"password" => password}), do: {:ok, password}
  defp extract_password(_), do: {:error, "password missing"}
end

# x = %{"login" => "John", "password" => "1234"}
