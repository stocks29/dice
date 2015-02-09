defmodule Dice.Mixfile do
  use Mix.Project

  def project do
    [app: :dice,
     version: "0.0.1",
     description: description,
     package: package,
     elixir: "~> 1.0",
     deps: deps,
     escript: escript]
  end

  def description do
    """
    Library and CLI app for rolling dice
    """
  end

  def package do
    [contributors: ["Bob Stockdale"],
     licenses: ["MIT License"],
     links: %{"GitHub" => "https://github.com/stocks29/dice"}]
  end

  def escript do
    [main_module: Dice.Cli]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    []
  end
end
