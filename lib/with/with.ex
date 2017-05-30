defmodule Example.With.Program1 do

  alias Example.With.User

  def verify(u = %User{}) do
    u
    |> validate_name
    |> validate_age



  end

  defp validate_name(user)  when length(n) > 0 do
    n = user.name

    case Regex.match?(~r/^[A-Z]\w{5,}/, n) do
      true -> {:ok, "Name is correct"}
      false -> {:error, "Name is not correct"}
    end
  end

  defp validate_name do
    {:error, "Name is mandatory"}
  end

  defp validate_age(user) when user.age > 18 do
    {:ok, "You are older than 18 years old"}
  end

  defp validate_age(user) when user.age < 18 do
    {:error, "You are not 18 years old"}
  end





end
