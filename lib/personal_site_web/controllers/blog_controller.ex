defmodule PersonalSiteWeb.BlogController do
  use PersonalSiteWeb, :controller

  alias PersonalSite.Articles

  def index(conn, _params) do
    render(conn, "index.html", articles: Articles.list_articles())
  end

  def show(conn, %{"slug" => slug}) do
    case Articles.get_article_by_slug(slug) do
      nil ->
        render(conn, PersonalSiteWeb.ErrorView, "404.html")

      article ->
        render(conn, "show.html", article: article)
    end
  end
end
