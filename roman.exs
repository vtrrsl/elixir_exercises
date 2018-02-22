defmodule Roman do
  @doc """
  Convert the number to a roman number.
  """

  @divisors [
    {1000, "M"},
    {900, "CM"},
    {500, "D"},
    {400, "CD"},
    {100, "C"},
    {90, "XC"},
    {50, "L"},
    {40, "XL"},
    {10, "X"},
    {9, "IX"},
    {5, "V"},
    {4, "IV"},
    {1, "I"}
  ]

  @spec numerals(pos_integer) :: String.t()
  def numerals(number, values \\ @divisors)

  def numerals(0, _) do
    ""
  end

  def numerals(number, [{value, symbol} | _] = values) when number >= value do
    symbol <> numerals(number - value, values)
  end

  def numerals(number, [_ | t]) do
    numerals(number, t)
  end
end