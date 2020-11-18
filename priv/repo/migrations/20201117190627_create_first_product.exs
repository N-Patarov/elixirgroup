defmodule Elixirgroup.Repo.Migrations.CreateFirstProduct do
  use Ecto.Migration

  def change do
    create table(:first_product) do
      add :name, :string
      add :description, :text
      add :price, :float

      timestamps()
    end

  end
end
