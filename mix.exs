defmodule Belvedere.Mixfile do
  use Mix.Project

  def project do
    [app: :belvedere,
     version: "0.0.1",
     name: "belvedere", 
     source_url: "https://github.com/nirvana/belvedere",
     homepage_url: "http://nirvana.io",
     elixir: "~> 1.0",
     description: "An example Elixir project with CircleCI, Docker, Dialyzer integration.",
     package: package,
     deps: deps,
     # Add the deps you care about here to be analyzed. (does slow things down)
     dialyzer: [plt_apps: ["erts","kernel", "stdlib", "crypto", "public_key", "mnesia"],
             flags: ["-Wunmatched_returns","-Werror_handling","-Wrace_conditions", "-Wno_opaque"],
             paths: ["_build/dev/lib/my_app/ebin", "_build/dev/lib/foo/ebin"]]
    ]
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
    [
      ### Add these dependencies to your project to generate documentation ###
      {:earmark, "~> 0.1", only: :dev},
      {:ex_doc, "~> 0.7", only: :dev}
      ####################################
    ]
  end

  defp package do
   [
    files: ~w(lib mix.exs README.md LICENSE),
    contributors: ["Jay Prince", "The Nirvana Project Contributors"],
    licenses: ["MIT License"],
    links: %{"GitHub" => "https://github.com/nirvana/belvedere",
    "Twitter" => "https://twitter.com/nirvanacore",
    "Website" => "http://nirvana.io"}
    ]
 end

end
