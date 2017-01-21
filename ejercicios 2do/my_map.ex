defmodule MyMap do
  def map(list, fun) when is_list(list) and is_function(fun) do
    do_map(list, fun, [])
  end

  defp do_map([],_, accum) do
    accum
      |> Enum.reverse
  end

  defp do_map([head | tail], fun, accum) do
    do_map(tail, fun, [fun.(head) | accum])
  end
end
