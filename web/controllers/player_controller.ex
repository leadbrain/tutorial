defmodule Tutorial.PlayerController do
  use Tutorial.Web, :controller

  def index(conn, _params) do
    players = Repo.all(Tutorial.Player)
    json conn, players
  end

  def show(conn, %{"id" => id}) do
    player = Repo.get(Tutorial.Player, String.to_integer(id))
    json conn, player
  end
end
