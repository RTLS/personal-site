defmodule PersonalSiteWeb.HomeController do
  use PersonalSiteWeb, :controller

  def index(conn, _params) do
    data = [
      jobs: PersonalSite.Jobs.list_jobs_by_start_date(:desc),
      books: PersonalSite.Books.list_books()
    ]

    render(conn, "index.html", data)
  end
end
