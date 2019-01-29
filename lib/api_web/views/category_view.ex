defmodule ApiWeb.CategoryView do
  use ApiWeb, :view

  def render("index.json", %{categories: categories}) do
    %{categories: render_many(categories, ApiWeb.CategoryView, "category.json")}
  end

  def render("category.json", %{category: category}) do
    %{
      id: category.id,
      name: category.name
    }
  end
end
