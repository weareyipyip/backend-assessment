defmodule MusicMetaWeb.AlbumController do
  use MusicMetaWeb, :controller

  alias MusicMeta.Music
  alias MusicMeta.Music.Album
  action_fallback MusicMetaWeb.FallbackController

  def index(conn, _params) do
    albums = Music.list_albums()
    render(conn, "index.json", albums: albums)
  end

  @spec create(any, map) :: any
  def create(conn, %{"album" => album_params}) do
    with {:ok, %Album{} = album} <- Music.create_album(album_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.album_path(conn, :show, album))
      |> render("show.json", album: album)
    end
  end

  @spec show(Plug.Conn.t(), map) :: Plug.Conn.t()
  def show(conn, %{"id" => id}) do
      album = Music.get_album!(id)
      render(conn, "show.json", album: album)

  end

  def update(conn, %{"id" => id, "album" => album_params}) do
    album = Music.get_album!(id)
    with {:ok, %Album{} = album} <- Music.update_album(album, album_params) do
      render(conn, "show.json", album: album)
    end
  end

  def delete(conn, %{"id" => id}) do
    album = Music.get_album!(id)

    with {:ok, %Album{}} <- Music.delete_album(album) do
      send_resp(conn, :no_content, "")
    end
  end
end
