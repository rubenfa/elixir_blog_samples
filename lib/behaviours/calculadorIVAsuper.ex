defmodule CalculadorIVASuperReducido do
  @behaviour CalculadorImpuestos

  def calcular(importe) do
    importe * 1.04
  end

end
