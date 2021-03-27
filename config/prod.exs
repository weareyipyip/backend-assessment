import Config

config :phoenix_website, PhoenixWebsiteWeb.Endpoint,
  load_from_system_env: false,
  url: [host: "localhost", port: 4000]

config :logger, level: :info
