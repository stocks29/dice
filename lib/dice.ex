defmodule Dice do

  def new(dice_sides) do
    for side_count <- dice_sides do
      Dice.Die.new(side_count)
    end
  end

  def roll(dice) do
    for die <- dice do 
      Dice.Die.roll(die)
    end
    |> Enum.sum
  end

  def trials(dice, num_trials) do
    for _trial <- 1..num_trials do
      roll(dice)
    end
    |> Enum.reduce(%{}, fn result, acc ->
      Map.put(acc, result, Map.get(acc, result, 0) + 1)
    end)
  end
end
