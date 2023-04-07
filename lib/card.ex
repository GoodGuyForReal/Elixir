defmodule Card do
  def create do
    ["ace", "two", "three", "king", "queen"]
  end

  def nestedLoops do
    deck = ["ace", "two", "three", "king", "queen"]
    number = [1, 2, 3, 4, 5]
    # ? Simple way to write nested two for loops
    for number <- number, card <- deck do
      "#{number} of #{card}"
    end

    # ["1 of ace", "1 of two", "1 of three", "1 of king", "1 of queen", "2 of ace",
    # "2 of two", "2 of three", "2 of king", "2 of queen", "3 of ace", "3 of two",
    # "3 of three", "3 of king", "3 of queen", "4 of ace", "4 of two", "4 of three",
    # "4 of king", "4 of queen", "5 of ace", "5 of two", "5 of three", "5 of king",
    # "5 of queen"]
  end

  # ? Enum.shuffle(list) shuffles inside of list
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  # ? Enum.map(list, fn) same thing in js
  def multiply do
    num = [1, 2, 3, 4, 5, 6]
    Enum.map(num, fn item -> item * 3 end)
  end

  # ? Enum.member?(deck, card) retuns true or false
  def isContain(deck, card) do
    Enum.member?(deck, card)
  end

  # ? Enum.split(deck, split point) returns it splits array from your point and creates two array
  # ? {hand , rest} = Card.dealSplit(deck,5) it can be also written like this in this way you assing varaible for to arrays
  def dealSplit(deck, count) do
    Enum.split(deck, count)
  end
end
