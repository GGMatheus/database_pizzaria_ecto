defmodule Pizzaria.Pizza do
  use Ecto.Schema

  schema "pizzas" do
    field(:tamanho_piz, :integer)
    field(:preco_piz, :integer)
    field(:nome_piz, :string)
    has_many(:funcionarios, Pizzaria.Funcionario)
    has_many(:ingredientes, Pizzaria.Ingrediente)

  end

  def changeset(pizza, params \\ %{}) do
    pizza
    |> Ecto.Changeset.cast(params, [:nome_piz, :preco_piz, :tamanho_piz])
    |> Ecto.Changeset.validate_required([:preco_piz])
  end
end
