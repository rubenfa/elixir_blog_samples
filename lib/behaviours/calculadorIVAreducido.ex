defmodule CalculadorIVAReducido do
  @behaviour CalculadorImpuestos

  def calcular(importe) do
    importe * 1.14
  end

end
