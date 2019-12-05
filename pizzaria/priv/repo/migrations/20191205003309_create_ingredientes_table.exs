defmodule Pizzaria.Repo.Migrations.CreateIngredientesTable do
  use Ecto.Migration

  def change do
    create table(:ingredientes) do
      add(:nome_ingr, :integer)
      add(:validade_ingr, :integer)
      add(:categoria_ingr, :string)
      add(:preco_ingr, :string)
      add(:quantidade_ingr, :string)
      add(:eh_critico_ingr, :boolean)
    end
  end
end
