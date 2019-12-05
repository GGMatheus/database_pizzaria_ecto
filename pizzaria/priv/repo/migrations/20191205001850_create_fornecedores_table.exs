defmodule Pizzaria.Repo.Migrations.CreateFornecedoresTable do
  use Ecto.Migration

  def change do
    create table(:fornecedores) do
      add(:telefone_forn, :integer)
      add(:email_forn, :integer)
      add(:nome_forn, :string)
      add(:endereco_forn, :string)
      add(:bairro_forn, :string)
      add(:uf_forn, :boolean)
      add(:cnpj_forn, :boolean)
      add(:data_recebimento_forn, :boolean)
    end
  end
end
