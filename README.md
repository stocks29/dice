Dice
====

Test the results of rolling different sided dice.

### Build CLI App

```bash
mix escript.build
```

### Run CLI App

```bash
./dice $num_trials $num_sides_die_1 $num_sides_die_2 $num_sides_die_3 ...
```

### Use Library

```elixir
# Create 2 x 6-sided die
dice = Dice.new([6, 6])

# Roll the dice
result = Dice.roll(dice)
# => 7

# Run several trials of the dice
results = Dice.trials(dice, 1000)
# => %{2 => 19, 3 => 52, 4 => 53, 5 => 81, 6 => 89, 7 => 167, 8 => 158, 9 => 118, 10 => 118, 11 => 86, 12 => 59}
```