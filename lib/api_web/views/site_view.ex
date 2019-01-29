defmodule ApiWeb.SiteView do
  use ApiWeb, :view

  def render("index.json", %{sites: sites}) do
    %{sites: render_many(sites, ApiWeb.SiteView, "site.json")}
  end

  def render("site.json", %{site: site}) do
    %{
      id: site.id,
      name: site.name,
      state: site.state
    }
  end
end
