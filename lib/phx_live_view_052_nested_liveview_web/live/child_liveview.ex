defmodule PhxLiveView052NestedLiveviewWeb.ChildLive do
  use Phoenix.LiveView

  def render(assigns) do
    ~L"""
    <p>I'm a child</p>
    """
  end

  def mount(_assigns, socket) do
    IO.inspect("Hey! I'm the child")

    # doesn't get raised
    raise "error in child_liveview.ex"

    {:ok, socket}
  end
end
