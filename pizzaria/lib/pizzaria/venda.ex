defmodule Pizzaria.Venda do
  use Ecto.Schema

  schema "vendas" do
    field(:preco_venda, :integer)
    field(:data_venda, :integer)
    has_one(:cliente, Pizzaria.Cliente)
    has_one(:funcionario, Pizzaria.Funcionario)
  end

  def changeset(venda, params \\ %{}) do
    venda
    |> Ecto.Changeset.cast(params, [:nome_ingr, :validade_ingr, :categoria_ingr, :preco_ingr,
                          :quantidade_ingr, :eh_critico_ingr])
    |> Ecto.Changeset.validate_required([:nome_ingr, :validade_ingr, :categoria_ingr, :preco_ingr,
                                        :quantidade_ingr, :eh_critico_ingr])
  end

end
