defmodule PhoenixCalime.Mixfile do
  use Mix.Project

  @version "0.7.0"

  def project do
    [
      app: :phoenix_calime,
      deps: deps,
      description: """
      Phoenix Template Engine for Slim-like templates
      """,
      elixir: "~> 1.0",
      package: package,
      version: @version]
  end

  def application do
    [applications: [:phoenix, :slime]]
  end

  def deps do
    [{:phoenix, "~> 1.1 or ~> 1.2"},
     {:phoenix_html, "~> 2.3"},
     {:cowboy, "~> 1.0"},
     {:calime,github: "helderhenri/calime" },
  end

  defp package do
    [maintainers: ["Sean Callan"],
     files: ["lib", "priv", "mix.exs", "README*", "LICENSE*"],
     licenses: ["MIT"],
     links: %{github: "https://github.com/slime-lang/phoenix_calime"}]
  end
end
