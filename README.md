Dice
====

Test the results of rolling different sided dice.

## Build CLI App

```bash
mix escript.build
```

## Run CLI App

```bash
./dice $num_trials $num_sides_die_1 $num_sides_die_2 $num_sides_die_3 ...
```

## Use as a library

```elixir
    # Create 2 x 6-sided die
    dice = Dice.new([6, 6])

    # Roll the dice
    result = Dice.roll(dice)
```