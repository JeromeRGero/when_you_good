defmodule WhenYouGoodWeb.PageController do
  use WhenYouGoodWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
