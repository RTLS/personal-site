defmodule PersonalSiteWeb.HomeView do
  use PersonalSiteWeb, :view

  def job_date_descriptor(%{end_date: nil, start_date: start_date}) do
    "#{format_date(start_date)} - Present"
  end

  def job_date_descriptor(%{end_date: end_date, start_date: start_date}) do
    "#{format_date(start_date)} - #{format_date(end_date)}"
  end

  defp format_date(date) do
    "#{month_from_date(date)} #{date.year}"
  end

  defp month_from_date(%Date{month: month}) do
    case month do
      1 -> "January"
      2 -> "February"
      3 -> "March"
      4 -> "April"
      5 -> "May"
      6 -> "June"
      7 -> "July"
      8 -> "August"
      9 -> "September"
      10 -> "October"
      11 -> "November"
      12 -> "December"
    end
  end
end
