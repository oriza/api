defmodule ApiWeb.SiteController do
  use ApiWeb, :controller

  alias Db.Site.Service, as: Site

  def index(conn, _params) do
    sites = Site.lists(["active", "selected"])

    render(conn,"index.json", %{sites: sites})
  end
end
