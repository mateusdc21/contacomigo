defmodule ContaComigo.Customer do
  use ContaComigo.Web, :model

  schema "customers" do
    field :first_name, :string
    field :last_name, :string
    field :email, :string
    field :phone, :string
    has_many :addresses, ContaComigo.Address

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:first_name, :last_name, :email, :phone])
    |> validate_required([:first_name, :last_name, :email, :phone])
  end
end
