defmodule ApiWeb.CategoryController do
  use ApiWeb, :controller

  alias Db.Category.Service, as: Category

  def index(conn, _params) do
    categories = Category.lists()

    render(conn,"index.json", %{categories: categories})
  end
end
