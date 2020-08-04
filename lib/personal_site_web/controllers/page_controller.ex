defmodule PersonalSiteWeb.PageController do
  use PersonalSiteWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html", articles: PersonalSite.Articles.list_articles())
  end
end
