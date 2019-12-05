defmodule Pizzaria.Repo.Migrations.ForeignKeys do
  use Ecto.Migration

  def change do
    alter table(:fornecedores) do
      add(:ingrediente_id, references(:ingredientes))
    end

    alter table(:ingredientes) do
      add(:pizza_id, references(:pizzas))
      add(:fornecedor_id, references(:fornecedores))
    end

    alter table(:pizzas) do
      add(:funcionario_id, references(:funcionarios))
      add(:ingrediente_id, references(:ingredientes))
    end

    alter table(:funcionarios) do
      add(:pizza_id, references(:pizzas))
    end

    alter table(:vendas) do
      add(:cliente_id, references(:clientes))
      add(:funcionario_id, references(:funcionarios))
    end
  end
end
