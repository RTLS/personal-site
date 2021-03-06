defmodule PersonalSiteWeb.ResumeController do
  use PersonalSiteWeb, :controller

  @resume_html "static/html/resume.html"

  def show(conn, _params) do
    priv_dir = :code.priv_dir(:personal_site)
    html_path = Path.join(priv_dir, @resume_html)

    conn
    |> put_resp_content_type("text/html")
    |> send_file(200, html_path)
  end
end
