defmodule BehavioursTest do
  use ExUnit.Case
  doctest Behaviours

  use 

  test "CalculadorIVA añade el 21% al importe pasado como parámetro" do
    CalculadorIVA.calcular(100) == 121
  end
end
