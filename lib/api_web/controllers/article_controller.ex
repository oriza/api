defmodule ApiWeb.ArticleController do
  use ApiWeb, :controller

  alias Db.Article.Service, as: Article

  def index(conn, %{"sites" => sites, "categories" => categories, "from" => from}) do
    site_ids = convert_params_to_list(sites)
    category_ids = convert_params_to_list(categories)
    articles = Article.lists(site_ids, from)

    render(conn,"index.json", %{articles: articles})
  end

  defp convert_params_to_list(params) when is_binary(params) do
    String.split(params, ",")
  end

  defp convert_params_to_list(_), do: []
end
