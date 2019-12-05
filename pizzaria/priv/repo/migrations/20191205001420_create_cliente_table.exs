defmodule Pizzaria.Repo.Migrations.CreateClienteTable do
  use Ecto.Migration

  def change do
    create table(:clientes) do
      add(:nome_cli, :integer)
      add(:endereco_cli, :integer)
      add(:bairro_cli, :string)
      add(:cidade_cli, :string)
      add(:cep_cli, :string)
      add(:data_nasc_cli, :string)
      add(:cpf_cli, :string)
      add(:telefone_cli, :string)
      add(:email_cli, :string)
      add(:senha_cli, :string)
      add(:cartao_cli, :string)
    end
  end
end
