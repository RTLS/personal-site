defmodule PersonalSite.Books.Book do
  use Ecto.Schema
  import Ecto.Changeset

  schema "books" do
    field :image_url, :string
    field :link, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(book, attrs) do
    book
    |> cast(attrs, [:title, :image_url, :link])
    |> validate_required([:title, :image_url, :link])
  end
end
