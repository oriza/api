defmodule ApiWeb.Router do
  use ApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ApiWeb do
    pipe_through :api

    get "/articles", ArticleController, :index
    get "/sites", SiteController, :index
    get "/categories", CategoryController, :index
  end
end
