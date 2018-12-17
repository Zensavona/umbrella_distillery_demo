defmodule Klock.Mixfile do
  use Mix.Project

  def project do
    [
      app: :klock,
      version: "0.2.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Klock.Application, []}
    ]
  end

  defp deps do
    [
    ]
  end
end