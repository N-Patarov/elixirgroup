defmodule ElixirgroupWeb.ProductView do
  use ElixirgroupWeb, :view
  def format_search_result(search_result, search_phrase) do
    split_at = String.length(search_phrase)
    {selected, rest} = String.split_at(search_result, split_at)

    "<strong>#{selected}</strong>#{rest}"
  end
end
