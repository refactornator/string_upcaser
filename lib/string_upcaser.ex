defmodule StringUpcaser do
  import String

  def start do
    receive do
      {inputString, from} -> send(from, {:ok, upcase(inputString)})
    end
  end
end
