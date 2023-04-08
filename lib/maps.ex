defmodule Maps do
  def colors do
    %{pirmary: "red", secondary: "yellow"}
  end

  # ? this function is update existence key  Map.put(name of the list, key but with atom ":key", and value  )
  def colorUpdate(color, key) do
    palet = %{pirmary: "red", secondary: "yellow"}
    Map.put(palet, key, color)
  end
  
end
