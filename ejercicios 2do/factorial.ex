defmodule Factorial do
  def de(1) do
    1
  end

  def de(n) when is_integer(n) and n>1 do
    n*de(n-1)
  end

  def de(_) do
    "Que paso amiguito??"
  end
end
