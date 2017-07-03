defmodule Sciencesupport.AnswerController do
  use Sciencesupport.Web, :controller

  alias Sciencesupport.{Answer, Repo}

  def create(conn, answer_params) do
    changeset = Answer.changeset(%Answer{}, answer_params)

    case Repo.insert(changeset) do
      {:ok, answer} ->
        conn
        |> put_status(:created)
        |> render("show.json", answer: answer)
      {:error, changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(Sciencesupport.ChangesetView, "error.json", changeset: changeset)
    end
  end
end
