alias Elixirgroup.Products
alias Elixirgroup.Products.Product

defmodule Fix do
  def mount(%{"action" => action, "csrf_token" => csrf_token}, socket) do
  assigns = [
    conn: socket,
    action: action,
    csrf_token: csrf_token,
    changeset: Products.change_product(%Product{})
  ]

  {:ok, assign(socket, assigns)}
  end

  def handle_event("validate", %{"product" => product_params}, socket) do
    changeset =
      %Product{}
      |> Product.changeset(product_params)
      |> Map.put(:action, :insert)

    {:noreply, assign(socket, changeset: changeset)}
  end
end


defmodule Elixirgroup.ProductFormLive do
  use Phoenix.LiveView

  def mount(%{"action" => action, "csrf_token" => csrf_token}, socket) do
    assigns = [
      conn: socket,
      action: action,
      csrf_token: csrf_token
    ]

    {:ok, assign(socket, assigns)}
  end

  def render(assigns) do
    Elixirgroup.ProductView.render("form.html", assigns)
  end
end
