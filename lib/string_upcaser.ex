defmodule StringUpcaser do
  import String

  def start do
    loop()
  end

  def loop do
    receive do
      {inputString, from} -> send(from, {:ok, upcase(inputString)})
    end
    loop()
  end
end
