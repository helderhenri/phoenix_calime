# Phoenix Template Engine for Calime (Canjs + Slime)

[![Build Status][travis-img]][travis] [![Hex Version][hex-img]][hex] [![License][license-img]][license]

> Powered by [Calime](https://github.com/helderhenri/calime)

## Usage

  1. Add `{:phoenix_calime, github: "helderhenri/phoenix_calime"}` to your deps in `mix.exs`.
  2. Add the following your Phoenix `config/config.exs`:

```elixir
  config :phoenix, :template_engines,
    cl: PhoenixCalime.Engine
```

## Live Reloader
In `my_app/config/dev.exs`, include the `cl` extensions in the list of watched files.

```elixir
# Watch static and templates for browser reloading.
config :my_app, MyApp.Endpoint,
  live_reload: [
    patterns: [
      ~r{priv/static/.*(js|css|png|jpeg|jpg|gif)$},
      ~r{web/views/.*(ex)$},
      ~r{web/templates/.*(eex|cl)$}
    ]
  ]
```

## Generators

This library also includes two `mix` tasks:

`mix phoenix.gen.html.calime`
`mix phoenix.gen.layout.calime`

The first task creates a html resource in the same way `phoenix.gen.html` does
with the exception that all files are `.slim` files instead of `.eex` files.

The second task creates a new `web/templates/layout/app.html.slim` with the
exact same content as the `app.html.eex` file. Do not forget to remove the old
`app.html.eex` file.

