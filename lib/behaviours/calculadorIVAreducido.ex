defmodule CalculadorIVAReducido do
  use CalculadorImpuestos
 
  def importe_con_impuestos(importe) do
    importe * 1.10
  end

  def solo_impuestos(importe) do
    (importe * 10) / 100
  end
end
