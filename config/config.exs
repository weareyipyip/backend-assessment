# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :music_meta,
  ecto_repos: [MusicMeta.Repo]

config :music_meta, MusicMeta.Repo,
  hostname: System.get_env("POSTGRES_HOSTNAME", "localhost"),
  port: System.get_env("POSTGRES_PORT", "5432") |> String.to_integer(),
  username: System.get_env("POSTGRES_USERNAME", "postgres"),
  password: System.get_env("POSTGRES_PASSWORD", "supersecret"),
  database: System.get_env("POSTGRES_DATABASE", "music_meta"),
  pool_size: 10

# Configures the endpoint
config :music_meta, MusicMetaWeb.Endpoint,
  http: [:inet6, port: System.get_env("HTTP_PORT", "4000") |> String.to_integer()],
  url: [
    scheme: System.get_env("APPLICATION_SCHEME", "http"),
    host: System.get_env("APPLICATION_HOSTNAME", "localhost"),
    port: System.get_env("APPLICATION_PORT", "4000") |> String.to_integer()
  ],
  secret_key_base: "O48c6wQn9zjzmELYEi3qEOTzzS27TLFGBf9PPs1Q03u3e8MT29z3dv+GIc3Pf0Xv",
  render_errors: [view: MusicMetaWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: MusicMeta.PubSub,
  live_view: [signing_salt: "bbKriRyQ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:module, :function]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
