defmodule Pizzaria.Cliente do
  use Ecto.Schema

  schema "clientes" do
    field(:nome_cli, :integer)
    field(:endereco_cli, :integer)
    field(:bairro_cli, :string)
    field(:cidade_cli, :string)
    field(:cep_cli, :string)
    field(:data_nasc_cli, :string)
    field(:cpf_cli, :string)
    field(:telefone_cli, :string)
    field(:email_cli, :string)
    field(:senha_cli, :string)
    field(:cartao_cli, :string)
  end

  def changeset(cliente, params \\ %{}) do
    cliente
    |> Ecto.Changeset.cast(params, [:nome_cli, :endereco_cli, :bairro_cli, :cidade_cli,
                          :cep_cli, :data_nasc_cli, :cpf_cli, :telefone_cli, :email_cli,
                          :cartao_cli])
    |> Ecto.Changeset.validate_required([:nome_cli, :cep_cli, :cpf_cli, :telefone_cli,
                                        :email_cli])
  end

end
