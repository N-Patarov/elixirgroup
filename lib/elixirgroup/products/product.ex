defmodule Elixirgroup.Products.Product do
  use Ecto.Schema
  import Ecto.Changeset

  schema "product" do
    field :description, :string
    field :name, :string
    field :price, :float
    field :properties, :map
    has_many :variants, Elixirgroup.Products.Variant
    has_many :taggings, Elixirgroup.Taggable.Tagging
    has_many :tags, through: [:taggings, :tag]

    timestamps()
  end

  @spec changeset(
          {map, map} | %{:__struct__ => atom | %{__changeset__: map}, optional(atom) => any},
          :invalid | %{optional(:__struct__) => none, optional(atom | binary) => any}
        ) :: Ecto.Changeset.t()
  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:description, :price])
    |> validate_required([:description, :price])
    |> validate_length(:name, min: 2)
    |> validate_number(:price, greater_than: 0)
  end
end
