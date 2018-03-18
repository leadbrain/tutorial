defmodule Tutorial.Router do
  use Tutorial.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Tutorial do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/api", Tutorial do
    pipe_through :api

    get "/players", PlayerController, :index
    get "/players/:id", PlayerController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", Tutorial do
  #   pipe_through :api
  # end
end
