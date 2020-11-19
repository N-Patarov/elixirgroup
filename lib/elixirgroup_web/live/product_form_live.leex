defmodule ElixirgroupWeb.ProductFormLive do
  use Phoenix.LiveView

  alias Elixirgroup.Products
  alias Elixirgroup.Products.Product


  def mount(%{"action" => action, "csrf_token" => csrf_token}, socket) do
  assigns = [
    conn: socket,
    action: action,
    csrf_token: csrf_token,
    changeset: Products.change_product(%Product{})
  ]

  {:ok, assign(socket, assigns)}
  end

  def render(assigns) do
    ElixirgroupWeb.ProductView.render("form.html", assigns)
  end

  def handle_event("validate", %{"product" => product_params}, socket) do
    changeset =
      socket.assing.product
      |> Product.changeset(product_params)
      |> Map.put(:action, :insert)

    {:noreply, assign(socket, changeset: changeset)}
  end
  def get_product(%{"id" => id} = _product_params), do: Products.get_product!(id)
  def get_product(_product_params), do: %Product{}

end
