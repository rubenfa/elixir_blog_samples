defmodule CalculadorImpuestos do
  @callback calcular(importe :: float) :: float
end
