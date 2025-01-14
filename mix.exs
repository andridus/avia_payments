defmodule SnitchPayments.MixProject do
  use Mix.Project

  def project do
    [
      app: :snitch_payments,
      version: "0.1.0",
      elixir: "~> 1.6",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support", "priv/repo/seed"]
  defp elixirc_paths(_), do: ["lib", "priv/repo/seed"]

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
      {:ex_money, github: "andridus/money", branch: "master"},
      {:mock, "~> 0.3.0", only: :test},
      {:gringotts, github: "andridus/gringotts", branch: "dev", override: true},
      {:httpoison, "~> 1.5.1", override: true}
    ]
  end
end
