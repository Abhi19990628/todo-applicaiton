defmodule TodoApplication.Repo do
  use Ecto.Repo,
    otp_app: :todo_application,
    adapter: Ecto.Adapters.Postgres
end
