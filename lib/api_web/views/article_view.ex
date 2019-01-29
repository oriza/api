defmodule ApiWeb.ArticleView do
  use ApiWeb, :view

  def render("index.json", %{articles: articles}) do
    %{articles: render_many(articles, ApiWeb.ArticleView, "article.json")}
  end

  def render("article.json", %{article: article}) do
    %{
      id: article.id,
      title: article.title,
      description: article.description,
      published_at: article.published_at,
      site: article.site.name,
      url: article.url
    }
  end
end
