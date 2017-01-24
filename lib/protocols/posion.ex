defmodule CustomParser.Product do

  @derive [Poison.Encoder]

  defstruct [:id, :name, :description, :price]

end

defimpl Poison.Encoder, for: CustomParser.Product do
  def encode(%{id: id, name: name, description: description, price: price}, options) do

    %{
      id: id,
      name: name,
      description: description,
      price: "€ #{price}"
    } |>  Poison.Encoder.encode(options)
  end
end
