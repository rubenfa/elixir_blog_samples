defmodule StringsExamples do

  def command_parser("write:" <> text) do
    IO.puts(text)
  end

  def command_parser("reverse:" <> text) do
    String.reverse(text) |> IO.puts
  end

  def command_parser("uppercase:" <> text) do
    String.upcase(text) |> IO.puts
  end


  def command_parser(_) do
    IO.puts("Command not found")
  end



end
