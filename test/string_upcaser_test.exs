defmodule StringUpcaserTest do
  use ExUnit.Case
  doctest StringUpcaser

  test "it responds to a message with a string with the uppercase represenation of that string" do
    upcaser = spawn(StringUpcaser, :start, [])
    send(upcaser, {"grempa", self()})
    assert_receive {:ok, "GREMPA"}
    send(upcaser, {"boo", self()})
    assert_receive {:ok, "BOO"}
  end
end
