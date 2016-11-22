defmodule BigBurger do
  @behaviour DoBurgerBehaviour

  def do_burger([]) do
    {:error, "You have not provided ingredients"}
  end

  def do_burger(ingredients) do
    IO.puts("your burger has: ")

    ingredients |> Enum.each(fn(p) -> IO.puts(p) end )

    

  end

  def other_function([]) do
    122
  end
end
