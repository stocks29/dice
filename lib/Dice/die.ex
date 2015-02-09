defmodule Dice.Die do

  def new(0), do: {:error, :zero_sides}
  def new(sides), do: Enum.to_list(1..sides)

  def num_sides(die), do: length die
  
  def roll(die), do: _side_at(die, _random_side_index(die))

  defp _side_at(die, index), do: Enum.at(die, index - 1)

  defp _random_side_index(die), do: die |> num_sides |> _random

  defp _random(n), do: :crypto.rand_uniform(0, n+1)

end