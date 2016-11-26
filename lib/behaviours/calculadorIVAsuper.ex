defmodule CalculadorIVASuperReducido do
  use CalculadorImpuestos

  def importe_con_impuestos(importe) do
    importe * 1.04
  end

end
