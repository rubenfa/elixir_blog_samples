defmodule CalculadorImpuestos do
  @callback calcular(importe :: float) :: float

  defmacro __using__(_) do
    quote do
      @behaviour CalculadorImpuestos

      def calcular(importe) do
        importe * 1.21
      end
    end
  end
end
