defmodule Sciencesupport.Repo.Migrations.CreateAnswer do
  use Ecto.Migration

  def change do
    create table(:answers) do
      add :session_id, :string
      add :response_value, :integer

      timestamps()
    end

  end
end
