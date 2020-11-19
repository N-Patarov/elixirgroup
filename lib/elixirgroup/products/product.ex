defmodule Elixirgroup.Products.Product do
  use Ecto.Schema
  import Ecto.Changeset

  schema "products" do
    field :description, :string
    field :price, :float

    timestamps()
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:description, :price])
    |> validate_required([:description, :price])
    |> validate_length(:name, min: 2)
    |> validate_number(:price, greater_than: 0)
  end
end
