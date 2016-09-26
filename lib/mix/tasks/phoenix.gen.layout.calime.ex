defmodule Mix.Tasks.Phoenix.Gen.Layout.Calime do
  use Mix.Task

  @shortdoc "Generates a default Phoenix layout file in Calime"

  @moduledoc """
  Generates a Phoenix layout file in Slime.

      mix phoenix_slime.gen.layout

  """
  def run(_args) do

    binding = [application_module: "ApplicationName"]

    Mix.Phoenix.copy_from slime_paths(), "priv/templates/phoenix.gen.layout.calime", "", binding, [
      {:eex, "app.html.eex",       "web/templates/layout/app.html.cl"}
    ]

    instructions = """

    A new web/templates/layout/app.html.cl file was generated. 
    """
    Mix.shell.info instructions
  end

  defp slime_paths do
    [".", :phoenix_slime]
  end
end
