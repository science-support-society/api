defmodule Sciencesupport.Router do
  use Sciencesupport.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Sciencesupport do
    pipe_through :api
  end
end
