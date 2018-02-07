defmodule Acronym do
  @doc """
  Generate an acronym from a string.
  "This is a string" => "TIAS"
  """
  @pattern ~r/\b\w|[A-Z]/

  @spec abbreviate(String.t()) :: String.t()
  def abbreviate(string) do
    Regex.scan(@pattern, string)
    |> Enum.join
    |> String.upcase
  end
end
