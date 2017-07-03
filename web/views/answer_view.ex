defmodule Sciencesupport.AnswerView do
  use Sciencesupport.Web, :view

  def render("index.json", %{answers: answers}) do
    %{data: render_many(answers, Sciencesupport.AnswerView, "answer.json")}
  end

  def render("show.json", %{answer: answer}) do
    %{data: render_one(answer, Sciencesupport.AnswerView, "answer.json")}
  end

  def render("answer.json", %{answer: answer}) do
    %{id: answer.id,
      session_id: answer.session_id,
      response_value: answer.response_value}
  end
end
