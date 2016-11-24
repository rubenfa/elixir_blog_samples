defmodule CalculadorIVAReducido do
#  @behaviour CalculadorImpuestos
  use CalculadorImpuestos


  def calcular(importe) do
    CalculadorImpuestos.calcular(importe)
  end

end
