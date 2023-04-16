defmodule Apps do
  def toCelsius(fahrenheit) do
    celsius = 5 / 9 * (fahrenheit - 32)
    trunc(celsius)
  end

  def toKelvin(celsius) do
    celsius + 273.15
  end

  def isVowel(char) do
    vowel = ["a", "e", "i", "o", "u"]
    isTrue = Enum.member?(vowel, char)

    if isTrue === true do
      "it is Vowel"
    else
      "it is not Vowel"
    end
  end

  def reversString(text) do
    String.reverse(text)
  end

  def removeDuplicates(array) do
    Enum.uniq(array)
  end

  def multiply(list, mult) do
    Enum.map(list, fn item -> item * mult end)
  end

  def shuffle(list) do
    Enum.shuffle(list)
  end
end
