defmodule MusicMeta.Music.Album do
  use Ecto.Schema
  import Ecto.Changeset

  schema "albums" do
    field :artist, :string
    field :title, :string
    field :year, :string

    timestamps()
  end

  @doc false
  def changeset(album, attrs) do
    album
    |> cast(attrs, [:artist, :title, :year])
    |> validate_required([:artist, :title, :year])
  end
end
