defmodule Dice.Cli do

  def main([num_trials|dice_sides]) do
    dice_sides 
    |> Enum.map(&String.to_integer/1)
    |> Dice.new 
    |> Dice.trials(String.to_integer(num_trials))
    |> put_results
  end

  defp put_results(results) do
    results
    |> Map.keys
    |> Enum.sort
    |> Enum.map(fn side -> 
      {side, Map.get(results, side)}
    end)
    |> Enum.each(fn {side, rolls} ->
      IO.puts "#{side} -> #{rolls}"
    end)
  end
  
end