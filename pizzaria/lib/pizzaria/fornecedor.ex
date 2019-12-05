defmodule Pizzaria.Fornecedor do
  use Ecto.Schema

  schema "fornecedores" do
    field(:telefone_forn, :integer)
    field(:email_forn, :integer)
    field(:nome_forn, :string)
    field(:endereco_forn, :string)
    field(:bairro_forn, :string)
    field(:uf_forn, :boolean)
    field(:cnpj_forn, :boolean)
    field(:data_recebimento_forn, :boolean)
    has_many(:ingredientes, Pizzaria.Ingrediente)
  end

  def changeset(fornecedor, params \\ %{}) do
    fornecedor
    |> Ecto.Changeset.cast(params, [:telefone_forn, :email_forn, :nome_forn, :endereco_forn,
                          :bairro_forn, :uf_forn, :cnpj_forn, :data_recebimento_forn])
    |> Ecto.Changeset.validate_required([:telefone_forn, :email_forn, :nome_forn, :endereco_forn,
                                        :bairro_forn, :uf_forn, :cnpj_forn, :data_recebimento_forn])
  end

end
