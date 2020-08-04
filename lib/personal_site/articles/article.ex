defmodule PersonalSite.Articles.Article do
  use Ecto.Schema
  import Ecto.Changeset

  schema "articles" do
    field :body, :string
    field :image_url, :string
    field :slug, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(article, attrs) do
    article
    |> cast(attrs, [:title, :image_url, :body])
    |> put_slug()
    |> validate_required([:title, :slug, :image_url, :body])
  end

  defp put_slug(%Ecto.Changeset{changes: %{title: title}} = changeset) do
    put_change(changeset, :slug, slugify(title))
  end

  defp slugify(title) do
    title
    |> String.split(" ")
    |> Enum.take(5)
    |> Enum.join("-")
    |> String.downcase()
  end
end
