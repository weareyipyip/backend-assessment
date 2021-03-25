defmodule MusicMetaWeb.Router do
  use MusicMetaWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", MusicMetaWeb do
    pipe_through :api

    # send data with Content-Type: application/json and json body for example
    # {
    #   "album" : {
    #     "artist" : "new artist",
    # 	  "title"  : "new title",
    # 	  "year"   : "2020"
    #           }
    # }
    resources "/albums", AlbumController, except: [:new, :edit] do
      get "/albums", AlbumController, :index
      get "/albums/:id", AlbumController, :show
      post "/albums", AlbumController, :create
      put "/albums/:id", AlbumController, :update
      delete "/albums/:id", AlbumController, :delete
    end
  end

  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
  if Mix.env() in [:dev, :dev_docker, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through [:fetch_session, :protect_from_forgery]
      live_dashboard "/dashboard", metrics: MusicMetaWeb.Telemetry
    end
  end
end
