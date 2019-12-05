defmodule Pizzaria.Ingrediente do
  use Ecto.Schema

  schema "ingredientes" do
    field(:nome_ingr, :integer)
    field(:validade_ingr, :integer)
    field(:categoria_ingr, :string)
    field(:preco_ingr, :string)
    field(:quantidade_ingr, :string)
    field(:eh_critico_ingr, :boolean)
    has_many(:pizzas, Pizzaria.Pizza)
    has_many(:fornecedores, Pizzaria.Fornecedor)
  end

  def changeset(ingrediente, params \\ %{}) do
    ingrediente
    |> Ecto.Changeset.cast(params, [:nome_ingr, :validade_ingr, :categoria_ingr, :preco_ingr,
                          :quantidade_ingr, :eh_critico_ingr])
    |> Ecto.Changeset.validate_required([:nome_ingr, :validade_ingr, :categoria_ingr, :preco_ingr,
                                        :quantidade_ingr, :eh_critico_ingr])
  end

end
