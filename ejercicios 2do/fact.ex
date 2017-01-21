defmodule Fact do
  def de(n) when is_integer(n) and n>0 do
    hacer_de(n, 1)
  end

  defp hacer_de(1, accum) do
    accum
  end

  defp hacer_de(n, accum) do
    hacer_de(n-1, accum*n)
  end
end
