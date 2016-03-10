defmodule Scrivener.Headers.Mixfile do
  use Mix.Project

  def project do
    [app: :scrivener_headers,
     version: "0.0.1",
     elixir: "~> 1.2",
     package: package,
     description: "",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def package do
    [maintainers: ["Sean Callan"],
     files: ["lib", "mix.exs", "README*", "LICENSE*"],
     licenses: ["MIT"],
     links: %{github: "https://github.com/doomspork/scrivener_headers"}]
  end

  def application do
    [applications: []]
  end

  defp deps do
    [{:plug, "~> 1.1", optional: true},
     {:scrivener, "~> 1.1"},
     {:earmark, "~> 0.1", only: :dev},
     {:ex_doc, "~> 0.11", only: :dev}]
  end
end
