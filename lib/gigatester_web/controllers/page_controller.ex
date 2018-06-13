defmodule GigatesterWeb.PageController do
  use GigatesterWeb, :controller
  alias Gigatester.Bucket
  require Logger

  def index(conn, _params) do
    state = Bucket.get(:hello)
    # Logger.info(inspect(state), label: "agent state")
    hello = Bucket.head(:hello)
    # Logger.info(hello, label: "hello")
    render(conn, "index.html", hello: hello, state: Bucket.get(:hello))
  end

  def save(conn, params) do
    # Logger.info(inspect(Bucket.get(:hello)), label: "agent state")
    hello = params["hello"]
    # Logger.info(hello, label: "hello")
    # Logger.info(inspect(params), label: "params")
    Bucket.push(:hello, hello)
    # Logger.info(inspect(Bucket.get(:hello)), label: "updated agent state")
    render(conn, "index.html", hello: hello, state: Bucket.get(:hello))
  end
end
