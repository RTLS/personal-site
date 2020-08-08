defmodule PersonalSite.Repo.Migrations.AlterJobs do
  use Ecto.Migration

  def change do
    alter table(:jobs) do
      add :logo_url, :text
    end
  end
end
