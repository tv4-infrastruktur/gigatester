defmodule GigatesterWeb.PageController do
  use GigatesterWeb, :controller
  alias Gigatester.Bucket

  def index(conn, _params) do
    state = Bucket.get(:hello)
    hello = Bucket.head(:hello)
    render(conn, "index.html", hello: hello, state: Bucket.get(:hello))
  end

  def save(conn, params) do
    hello = params["hello"]
    Bucket.push(:hello, hello)
    render(conn, "index.html", hello: hello, state: Bucket.get(:hello))
  end
end
