defmodule PersonalSite.Repo.Migrations.CreateJobs do
  use Ecto.Migration

  def change do
    create table(:jobs) do
      add :company, :string
      add :position, :string
      add :start_date, :date
      add :end_date, :date
      add :blurb, :text
      add :image_url, :text
      add :location, :string
      add :link, :string

      timestamps()
    end

  end
end
