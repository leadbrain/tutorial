defmodule Tutorial.Repo.Migrations.CreatePlayer do
  use Ecto.Migration

  def change do
    create table(:players) do
      add :name, :string
      add :level, :integer

      timestamps()
    end
  end
end
