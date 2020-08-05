defmodule PersonalSite.Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :title, :string
      add :image_url, :text
      add :link, :text

      timestamps()
    end

  end
end
