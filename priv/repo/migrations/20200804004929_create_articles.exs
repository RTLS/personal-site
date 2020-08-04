defmodule PersonalSite.Repo.Migrations.CreateArticles do
  use Ecto.Migration

  def change do
    create table(:articles) do
      add :title, :string
      add :slug, :string
      add :image_url, :string
      add :body, :text

      timestamps()
    end

  end
end
