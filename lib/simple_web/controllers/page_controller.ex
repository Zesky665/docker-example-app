defmodule SimpleWeb.PageController do
  use SimpleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def ping(conn, _params) do
    render(conn, "ping.html")
  end

  def die(conn, _params) do
    spawn(fn ->  Process.sleep(2000); System.stop(0) end)
   render(conn, "die.html")
  end
end
