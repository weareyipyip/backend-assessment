# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :music_meta,
  ecto_repos: [MusicMeta.Repo]

# Configures the endpoint
config :music_meta, MusicMetaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "O48c6wQn9zjzmELYEi3qEOTzzS27TLFGBf9PPs1Q03u3e8MT29z3dv+GIc3Pf0Xv",
  render_errors: [view: MusicMetaWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: MusicMeta.PubSub,
  live_view: [signing_salt: "bbKriRyQ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
