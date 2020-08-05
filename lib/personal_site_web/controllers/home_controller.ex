defmodule PersonalSiteWeb.HomeController do
  use PersonalSiteWeb, :controller

  def index(conn, _params) do
    jobs = PersonalSite.Jobs.list_jobs()
    books = PersonalSite.Books.list_books()
    render(conn, "index.html", jobs: jobs, books: books)
  end
end
