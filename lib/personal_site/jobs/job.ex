defmodule PersonalSite.Jobs.Job do
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query

  alias __MODULE__

  schema "jobs" do
    field :blurb, :string
    field :company, :string
    field :end_date, :date
    field :logo_url, :string
    field :image_url, :string
    field :link, :string
    field :location, :string
    field :position, :string
    field :start_date, :date

    timestamps()
  end

  @required_params [
    :company,
    :position,
    :start_date,
    :blurb,
    :logo_url,
    :image_url,
    :location,
    :link
  ]

  @optional_params [:end_date]
  @all_params @required_params ++ @optional_params

  @doc false
  def changeset(job, attrs) do
    job
    |> cast(attrs, @all_params)
    |> validate_required(@required_params)
  end

  def by_start_date(query \\ Job, order \\ :asc) do
    order_by = Keyword.new([{order, :start_date}])
    order_by(query, ^order_by)
  end
end
