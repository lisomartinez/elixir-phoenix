defmodule RumblWeb.UserView do
  use RumblWeb, :view

  alias Rumbl.Accounts

  @spec first_name(Rumbl.Accounts.User.t()) :: any
  def first_name(%Accounts.User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end
