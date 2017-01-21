defmodule Tribo do
  def de([a,b,c]=lista, longitud) when is_number(a) and is_number(b) and is_number(c) and is_integer(longitud) and longitud>0 do
    do_de(lista, longitud, [])
  end

  defp do_de(_, 0, accum) do
    accum
      |> Enum.reverse
  end

  defp do_de([a,b,c], longitud, accum) do
    do_de([b,c,a+b+c], longitud-1, [a | accum])
  end
end
