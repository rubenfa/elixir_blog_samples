defmodule Contabilidad do

#  @default_calculator CalculadorIVA 

  def calcular_impuestos(lineas_pedido,  opts // []) do

    # {calculador, opts} = Keyword.pop(opts, :parser, CalculadorIVA)
    

    # lineas_pedido
    # |> Enum.reduce(0, fn({importe, cantidad}, acc) -> acc + (importe * cantidad) end)
    #|> aplicar_impuestos(calculador)
  end

  defp aplicar_impuestos(importe, calculador) do
    calculador.calcular(importe)
  end
end
