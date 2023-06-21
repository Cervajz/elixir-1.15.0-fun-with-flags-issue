defmodule EK.MixProject do
  use Mix.Project

  def project do
    [
      app: :ek,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      releases: [
        ek: [
          include_erts: true,
          include_executables_for: [:unix],
          applications: [
            ek: :permanent,
            fun_with_flags: :load
          ]
        ]
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {EK.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto_sql, "~> 3.6"},
      {:postgrex, ">= 0.0.0"},
      {:fun_with_flags, "~> 1.10.1", runtime: false}
    ]
  end
end
