defmodule GigatesterWeb.Router do
  use GigatesterWeb, :router

  pipeline :browser do
    plug(:accepts, ["html"])
    plug(:fetch_session)
    plug(:fetch_flash)
    plug(:protect_from_forgery)
    plug(:put_secure_browser_headers)
  end

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/", GigatesterWeb do
    # Use the default browser stack
    pipe_through(:browser)

    get("/", PageController, :index)
    post("/", PageController, :save)
  end

  # Other scopes may use custom stacks.
  # scope "/api", GigatesterWeb do
  #   pipe_through :api
  # end
end
