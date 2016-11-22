defmodule DoBurgerBehaviour do

  @callback do_burger( ingredients :: term ) ::
        {:ok, burger :: String.t} | {:error, reason :: String.t }

end

