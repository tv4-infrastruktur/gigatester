defmodule GigatesterWeb.PageController do
  use GigatesterWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
