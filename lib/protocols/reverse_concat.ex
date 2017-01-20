defprotocol ConcatReverse do
  @doc "Devuelve un string con todos los elementos de la estructura concatenados y al revés "
  def concat_reverse(data)
end

defimpl ConcatReverse, for: String do
  def concat_reverse(data), do: String.reverse(data)
end

defimpl ConcatReverse, for: Integer do
  def concat_reverse(data) do
    data |> to_string |> String.reverse
  end
end

defimpl ConcatReverse, for: List do
  def concat_reverse([]), do: ""
  def concat_reverse(data) do
    data |> Enum.join |> String.reverse
  end
end

defimpl ConcatReverse, for: Tuple do 
  def concat_reverse(data) do
    data
    |> Tuple.to_list(data)
    |> Enum.join
    |> String.reverse
  end
end
