defmodule Ssz.MixProject do
  use Mix.Project

  def project do
    [
      app: :ssz,
      version: "0.1.0",
      elixir: "~> 1.8",
      description: description(),
      package: package(),
      start_permanent: Mix.env() == :prod,
      test_coverage: [tool: ExCoveralls],
      source_url: "https://github.com/timjp87/elixir-ssz",
      deps: deps()
    ]
  end

  defp description() do
    "WIP Implementation of the Simple Serialize specification for Ethereum 2.0."
  end

  defp package() do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/timjp87/elixir-ssz"}
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_crypto, "~> 0.10.0"},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end
end
