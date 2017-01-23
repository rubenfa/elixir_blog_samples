defprotocol ConcatReverse do
  @fallback_to_any true

  @doc "Devuelve un string con todos los elementos de la estructura concatenados y al revés"
  def concat_reverse(data)
end

defimpl ConcatReverse, for: BitString do
  def concat_reverse(data), do: String.reverse(data)
end

defimpl ConcatReverse, for: Integer do
  def concat_reverse(data) do
    data
    |> to_string
    |> String.reverse
  end
end

defimpl ConcatReverse, for: List do
  def concat_reverse([]), do: ""
  def concat_reverse(data) do
    data
    |> Enum.join
    |> String.reverse
  end
end

defimpl ConcatReverse, for: Tuple do 
  def concat_reverse(data) do
    data
    |> Tuple.to_list
    |> Enum.join
    |> String.reverse
  end
end

defimpl ConcatReverse, for: Any do
  def concat_reverse(_), do: ""
end
