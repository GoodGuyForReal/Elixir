defmodule Filter do
  def createProducts do
    [
      %{name: "iPhone", description: "A smartphone by Apple", price: 999},
      %{name: "Samsung Galaxy", description: "A smartphone by Samsung", price: 899},
      %{name: "Sony Bravia", description: "A smart TV by Sony", price: 1499},
      %{name: "LG OLED", description: "A smart TV by LG", price: 1599},
      %{name: "Macbook Pro", description: "A laptop by Apple", price: 1999},
      %{name: "Dell XPS", description: "A laptop by Dell", price: 1499}
    ]
  end

  def sortByName(list) do
    Enum.sort(list, fn item1, item2 -> item1.name < item2.name end)
  end

  def sortByPrice(list, type) do
    case type do
      "inc" ->
        Enum.sort(list, fn item1, item2 -> item1.price < item2.price end)

      "dec" ->
        Enum.sort(list, fn item1, item2 -> item1.price > item2.price end)

      _ ->
        list
    end
  end

  def searchByName(list, query) do
    query = String.downcase(query)

    Enum.filter(list, fn item ->
      name = String.contains?(String.downcase(item.name), query)
      description = String.contains?(String.downcase(item.description), query)
      name || description
    end)
  end
end
