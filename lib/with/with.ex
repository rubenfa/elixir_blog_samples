defmodule Example.With.Program1 do

  alias Example.With.User

  def verify(u = %User{}) do
    u
    |> validate_name
    |> validate_age
    |> accepted_privacy
  end

  defp validate_name(user = %User{ name: n}) when length(n) == 0 do
    {:error, "Name is mandatory"}
  end

  defp validate_name(user = %User{}) do
    n = user.name

    case Regex.match?(~r/^[A-Z]\w{5,}/, n) do
      true -> user
      false -> {:error, "Name is not correct"}
    end
  end

  defp validate_age(user = %User{ age: a}) when a >= 18 do
    user
  end

  defp validate_age(%User{ age: a}) when a < 18 do
    {:error, "You are not 18 years old"}
  end

  defp accepted_privacy(%User{ accept_privacy: p}) when p == false do
    {:error, "You have to accept our privacy policy"}
  end

  defp accepted_privacy(user = %User{}) do
    user
  end
end
