defmodule CaidaLibre do
  def velocidad(distancia) do
    :math.sqrt(2*9.81*distancia)
  end
end
