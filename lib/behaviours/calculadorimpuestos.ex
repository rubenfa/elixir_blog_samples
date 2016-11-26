defmodule CalculadorImpuestos do

  @moduledoc """
  Módulo utilizado para implementar el ca

  """

  @callback importe_con_impuestos(importe :: float) :: float
  @callback solo_impuestos(importe :: float) :: float

  defmacro __using__(_) do
    quote do
      @behaviour CalculadorImpuestos
      @impuestos 21

      def importe_con_impuestos(importe) do
        importe * (@impuestos/100 + 1)
      end

      # def solo_impuestos(importe) do
      #   (importe * @impuestos) / 100
      # end

      defoverridable [importe_con_impuestos: 1]
    end
  end
end
