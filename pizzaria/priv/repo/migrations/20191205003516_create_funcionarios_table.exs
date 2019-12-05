defmodule Pizzaria.Repo.Migrations.CreateFuncionariosTable do
  use Ecto.Migration

  def change do
    create table(:funcionarios) do
      add(:nome_func, :integer)
      add(:documento_func, :integer)
      add(:telefone_func, :string)
      add(:endereco_func, :string)
      add(:bairro_func, :string)
      add(:cidade_func, :boolean)
      add(:rg_func, :boolean)
      add(:cpf_func, :boolean)
      add(:email_func, :boolean)
      add(:senha_func, :boolean)
      add(:cargo_func, :boolean)
      add(:salario_func, :boolean)
      add(:hora_saida_func, :boolean)
      add(:hora_entrada_func, :boolean)
      add(:banco_horas_func, :boolean)
      add(:faltas_func, :boolean)
    end
  end
end
