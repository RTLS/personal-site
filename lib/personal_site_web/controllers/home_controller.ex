defmodule PersonalSiteWeb.HomeController do
  use PersonalSiteWeb, :controller

  def index(conn, _params) do
    jobs = Enum.sort_by(PersonalSite.Jobs.list_jobs(), &(Date.to_iso8601(&1.start_date)), &>=/2)
    books = PersonalSite.Books.list_books()
    render(conn, "index.html", jobs: jobs, books: books)
  end
end
