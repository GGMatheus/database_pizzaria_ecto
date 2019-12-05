defmodule Pizzaria.Repo.Migrations.CreateVendasTable do
  use Ecto.Migration

  def change do
    create table(:vendas) do
      add(:preco_venda, :integer)
      add(:data_venda, :integer)
    end
  end
end
