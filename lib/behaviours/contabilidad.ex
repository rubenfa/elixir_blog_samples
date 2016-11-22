defmodule Contabilidad do

#  @default_calculator CalculadorIVA 

  def calcular_impuestos(lineas_pedido, opts \\ []) do

    {calculador, opts} = Keyword.pop(opts, :calculator, CalculadorIVA)    

    total_sin_impuestos = calcular_total(lineas_pedido)
    total_con_impuestos = calcular_total_con_impuestos(total_sin_impuestos, calculador)

    {total_sin_impuestos, total_con_impuestos}
  end

  defp calcular_total(lineas_pedido) do
    lineas_pedido
    |> Enum.reduce(0, fn({importe, cantidad}, acc) -> acc + (importe * cantidad) end)
  end

  defp calcular_total_con_impuestos(importe_total, calculador) do
    importe_total
    |> aplicar_impuestos(calculador)
  end

  defp aplicar_impuestos(importe, calculador) do
    calculador.calcular(importe)
  end
end
