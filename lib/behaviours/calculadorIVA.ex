defmodule CalculadorIVA do
#  @behaviour CalculadorImpuestos

  def calcular(importe) do
    importe * 1.21
  end
end
