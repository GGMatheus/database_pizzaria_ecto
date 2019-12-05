defmodule PizzariaTest do
  use ExUnit.Case
  doctest Pizzaria

  test "greets the world" do
    assert Pizzaria.hello() == :world
  end
end
