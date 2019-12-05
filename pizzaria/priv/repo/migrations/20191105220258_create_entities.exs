defmodule Pizzaria.Repo.Migrations.CreateEntities do
  use Ecto.Migration

  def change do
    create table(:pizzas) do
      add(:tamanho_piz, :int)
      add(:preco_piz, :int)
      add(:nome_piz, :string)
    end
  end
end
