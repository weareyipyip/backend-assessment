defmodule MusicMetaWeb.AlbumView do
  use MusicMetaWeb, :view
  alias MusicMetaWeb.AlbumView

  def render("index.json", %{albums: albums}) do
    %{data: render_many(albums, AlbumView, "album.json")}
  end

  def render("show.json", %{album: album}) do
    %{data: render_one(album, AlbumView, "album.json")}
  end

  def render("album.json", %{album: album}) do
    %{id: album.id,
      title: album.title,
      artist: album.artist,
      year: album.year}
  end

end
