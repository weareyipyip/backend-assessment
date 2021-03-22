defmodule MusicMeta.Repo do
  use Ecto.Repo,
    otp_app: :music_meta,
    adapter: Ecto.Adapters.Postgres
end
