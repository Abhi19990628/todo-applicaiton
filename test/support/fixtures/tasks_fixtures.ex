defmodule TodoApplication.TasksFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `TodoApplication.Tasks` context.
  """

  @doc """
  Generate a todo.
  """
  def todo_fixture(attrs \\ %{}) do
    {:ok, todo} =
      attrs
      |> Enum.into(%{
        completed: true,
        description: "some description",
        title: "some title"
      })
      |> TodoApplication.Tasks.create_todo()

    todo
  end
end
