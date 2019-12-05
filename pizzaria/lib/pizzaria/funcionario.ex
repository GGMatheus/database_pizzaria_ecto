defmodule Pizzaria.Funcionario do
  use Ecto.Schema

  schema "funcionarios" do
    field(:nome_func, :integer)
    field(:documento_func, :integer)
    field(:telefone_func, :string)
    field(:endereco_func, :string)
    field(:bairro_func, :string)
    field(:cidade_func, :boolean)
    field(:rg_func, :boolean)
    field(:cpf_func, :boolean)
    field(:email_func, :boolean)
    field(:senha_func, :boolean)
    field(:cargo_func, :boolean)
    field(:salario_func, :boolean)
    field(:hora_saida_func, :boolean)
    field(:hora_entrada_func, :boolean)
    field(:banco_horas_func, :boolean)
    field(:faltas_func, :boolean)
    has_many(:pizzas, Pizzaria.Pizza)
  end

  def changeset(funcionario, params \\ %{}) do
    funcionario
    |> Ecto.Changeset.cast(params, [:nome_func, :documento_func, :telefone_func, :endereco_func,
                          :bairro_func, :cidade_func, :email_func, :cargo_func, :salario_func,
                          :hora_saida_func, :hora_entrada_func, :banco_horas_func, :faltas_func])
    |> Ecto.Changeset.validate_required([:nome_func, :documento_func, :telefone_func, :endereco_func,
                                        :bairro_func, :cidade_func, :rg_func, :cpf_func, :email_func,
                                        :cargo_func, :salario_func, :hora_saida_func,
                                        :hora_entrada_func, :banco_horas_func, :faltas_func])
  end
end
