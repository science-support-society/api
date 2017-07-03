defmodule Sciencesupport.Answer do
  use Sciencesupport.Web, :model

  schema "answers" do
    field :session_id, :string
    field :response_value, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:session_id, :response_value])
    |> validate_required([:session_id, :response_value])
  end
end
